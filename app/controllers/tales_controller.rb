require 'pry'

class TalesController < ApplicationController
  def index
    @tales = Tale.all
  end

  def show
    @tale = Tale.find(params[:id])
  end

  def new

    @image = random_img
    @tale = Tale.new
  end

  def create
    @tale = Tale.new(tale_params)
    if @tale.save
      redirect_to tale_path(@tale)
    else
      render :new
    end
  end

  def edit
    @tale = Tale.find(params[:id])
  end
  def update
    @tale = Tale.find(params[:id])
    if @tale.update(tale_params)
      redirect_to tale_path(@tale)
    else
      render :edit
    end
  end
  def destroy
    @tale = Tale.find(params[:id])
    @tale.destroy
    redirect_to tales_path
  end

private
  def tale_params
    params.require(:tale).permit(:title, :image)
  end
end
