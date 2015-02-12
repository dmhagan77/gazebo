class RetroItemsController < ApplicationController
  def index
    @retro_items = RetroItem.order('happiness').all

    render :index, status: 200
  end

  def new
    @retro_item = RetroItem.new
    @statuses = RetroItem.happinesses.keys.to_a
  end

  def create
    if RetroItem.create!(retro_params)
      flash[:success] = 'Retro Item added'
      redirect_to '/'
    else
      flash[:alert] = 'Unable to create new retro item'
    end
  end

  def edit
    @retro_item = RetroItem.find_by(id: params[:id])
    @statuses = RetroItem.happinesses.keys.to_a
  end

  def update
    if RetroItem.find_by(id: params[:id]).update_attributes!(retro_params)
      flash[:success] = 'Retro Item Updated'
    else
      flash[:alert] = 'Unable to update retro item'
    end

    redirect_to '/'
  end
  
  def destroy
    RetroItem.find_by(id: params[:id]).destroy
    flash[:success] = 'Retro Item Deleted'
 
   redirect_to retro_items_url 
  end

  private

  def retro_params
    params.require(:retro_item).permit(:description, :happiness)
  end
end
