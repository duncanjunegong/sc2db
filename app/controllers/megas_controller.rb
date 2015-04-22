class MegasController < ApplicationController
  def index
    if params[:chr_id]
      @megas = Chr.find(params[:chr_id]).megas.paginate(page: params[:page])
    else
      @megas = Mega.paginate(page: params[:page])
    end
  end

  def show
    @mega = Mega.find(params[:id])
  end

  def new
    @mega = Mega.new
  end

  def create
    @mega = Mega.new(mega_params)
    if @mega.save
      flash[:success] = "Mega created!"
      redirect_to @mega 
    else
      render 'new'
    end
  end

  def edit
    @mega = Mega.find(params[:id])
  end

  def update 
    @mega = Mega.find(params[:id])
    if @mega.update_attributes(mega_params)
      flash[:success] = "Mega updated"
      redirect_to @mega
    else
      render 'edit'
    end
  end

  def destroy
    Mega.find(params[:id]).destroy
    flash[:success] = "mega deleted"
    redirect_to megas_url
  end

  private

    def mega_params
      params[:mega][:marker] = params[:mega][:marker].to_i
      params.require(:mega).permit(:name, :synstart, :synend, :marker,
                                   :introduction, :latest_flag)
    end

end
