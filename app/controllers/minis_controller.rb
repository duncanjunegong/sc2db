class MinisController < ApplicationController
  def index
    if params[:chunk_id]
      @minis = Chunk.find(params[:chunk_id]).minis.paginate(page: params[:page])
    else
      @minis = Mini.paginate(page: params[:page])
    end
  end

  def show
    @mini = Mini.find(params[:id])
  end

  def new
    @mini = Mini.new
  end

  def create
    @mini = Mini.new(mini_params)
    if @mini.save
      flash[:success] = "mini created!"
      redirect_to @mini 
    else
      render 'new'
    end
  end

  def edit
    @mini = Mini.find(params[:id])
  end

  def update 
    @mini = Mini.find(params[:id])
    if @mini.update_attributes(mini_params)
      flash[:success] = "mini updated"
      redirect_to @mini
    else
      render 'edit'
    end
  end

  def destroy
    Mini.find(params[:id]).destroy
    flash[:success] = "mini deleted"
    redirect_to minis_url
  end

  private

    def mini_params
      params[:mini][:ctype] = params[:mini][:ctype].to_i
      params.require(:mini).permit(:name, :ctype, :synstart, :synend, :sequence,
                                   :introduction, :latest_flag)
    end

end
