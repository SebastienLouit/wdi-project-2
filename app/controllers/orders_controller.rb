class OrdersController < ApplicationController

before_action :set_order, only: [:accept, :reject, :cancel]

  def new
    @serving = Serving.find(params[:serving_id])
    @order = Order.new
  end

  def create
    @serving = Serving.find(params[:serving_id])
    @order = @serving.orders.new(order_params)
    @order.sender_id = current_user.id
    @order.receiver_id = @serving.user.id

    if @order.save
      flash[:success] = "Your order was made sucessfully"
      redirect_to servings_path
    else
      flash[:danger] = "Not sent"
      redirect_to servings_path
    end
  end

  def inbox
  end

  def inbox
  end

  def accept
    @order.accept!
    flash[:sucess] = "You accepted the order"
    redirect_to :back
  end

  def reject
    @order.reject!
    flash[:danger] = "You rejected the order"
    redirect_to :back
  end

  def cancel
    @order.cancel!
    flash[:info] = "You cancel the order"
    redirect_to :back
  end


  private 

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:details, :deadline, :servings_id)

  end



end