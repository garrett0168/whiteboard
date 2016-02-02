class WhiteboardController < ApplicationController
  after_action :allow_iframe
  http_basic_authenticate_with name: "admin", password: "access23", only: [:edit, :update]
  def edit
    @whiteboard = Whiteboard.find(2)
  end
  def index
    @whiteboard = Whiteboard.find(2)
  end
  def filter
    @whiteboard = Whiteboard.find(2)
  end
  def update
    @whiteboard = Whiteboard.find(params[:id])
 
    if @whiteboard.update(whiteboard_params)
      redirect_to @whiteboard
    else
      render 'edit'
    end
  end
  private def whiteboard_params
    params.require(:whiteboard).permit(:pur_conv, :pur_fha, :pur_va, :pur_usda, :updated, :con_conv, :con_fha, :con_va, :con_usda, :refi_conv, :refi_fha, :refi_va, :refi_usda)
  end
  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end
