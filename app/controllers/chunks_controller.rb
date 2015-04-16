class ChunksController < ApplicationController
  def index
    @chunks = Chunk.paginate(page: params[:page])
  end

  def show
    @chunk = Chunk.find(params[:id])
  end

  def new
    @chunk = Chunk.new
  end

  def edit
  end
end
