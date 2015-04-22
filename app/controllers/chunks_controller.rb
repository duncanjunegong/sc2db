class ChunksController < ApplicationController
  def index
    if params[:mega_id]
      @chunks = Mega.find(params[:mega_id]).chunks.paginate(page: params[:page])
    else
      @chunks = Chunk.paginate(page: params[:page])
    end
  end

  def show
    @chunk = Chunk.find(params[:id])
  end

  def new
    @chunk = Chunk.new
  end

  def create
    @chunk = Chunk.new(chunk_params)
    if @chunk.save
      flash[:success] = "chunk created!"
      redirect_to @chunk 
    else
      render 'new'
    end
  end

  def edit
    @chunk = Chunk.find(params[:id])
  end

  def update 
    @chunk = Chunk.find(params[:id])
    if @chunk.update_attributes(chunk_params)
      flash[:success] = "chunk updated"
      redirect_to @chunk
    else
      render 'edit'
    end
  end

  def destroy
    Chunk.find(params[:id]).destroy
    flash[:success] = "chunk deleted"
    redirect_to chunks_url
  end

  private

    def chunk_params
      params.require(:chunk).permit(:name, :overall_length, :synstart, :synend,
                                   :introduction, :latest_flag)
    end

end
