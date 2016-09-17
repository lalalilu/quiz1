class RescuesController < ApplicationController

  def new
    @rescue = Rescue.new
  end

  def create
    @rescue = rescues.create(rescue_params)
    redirect_to rescue_path(@rescue)
  end

  def show
    @rescue = Rescue.find(params[:id])
  end

  private

  def rescue_params
    params.require(:rescue).permit(:title, :description, :when)
  end

end
