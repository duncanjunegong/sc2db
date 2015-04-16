class MinisController < ApplicationController
  def index
    @minis = Mini.paginate(page: params[:page])
  end

  def show
    @mini = Mini.find(params[:id])
  end

  def new
    @mini = Mini.new
  end

  def edit
  end
end
