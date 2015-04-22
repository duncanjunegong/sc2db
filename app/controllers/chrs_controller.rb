class ChrsController < ApplicationController
  def index
    @chrs = Chr.paginate(page: params[:page])
  end

  def show
    @chr = Chr.find(params[:id])
  end

  def new
    @chr = Chr.new
  end

  def create
    @chr = Chr.new(chr_params)
    if @chr.save
      flash[:success] = "Chr created!"
      redirect_to @chr 
    else
      render 'new'
    end
  end

  def edit
    @chr = Chr.find(params[:id])
  end

  def update 
    @chr = Chr.find(params[:id])
    if @chr.update_attributes(chr_params)
      flash[:success] = "Chr updated"
      redirect_to @chr
    else
      render 'edit'
    end
  end

  def destroy
    Chr.find(params[:id]).destroy
    flash[:success] = "chr deleted"
    redirect_to chrs_url
  end

  private

    def chr_params
      params[:chr][:ctype] = params[:chr][:ctype].to_i
      params[:chr][:manipulation] = params[:chr][:manipulation].to_i
      params.require(:chr).permit(:name, :ctype, :length, :manipulation,
                                   :version, :introduction, :latest_flag)
    end


end
