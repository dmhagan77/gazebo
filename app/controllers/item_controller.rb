class ItemController < ApplicationController
  def index
    @retro_items = RetroItem.all
  end

  # def create
  # end
  #
  # def update
  # end
  #
  # def delete
  # end

  private

  # def retro_paramas
  #   params.require(:retro_items).permit(:description)
  # end
end
