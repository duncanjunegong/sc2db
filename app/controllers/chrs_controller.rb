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

  def edit
  end
end
