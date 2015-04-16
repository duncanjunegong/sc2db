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

  def edit
  end
end
