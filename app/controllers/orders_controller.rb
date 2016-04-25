class OrdersController < ApplicationController
  def new
      @serving = Servgin.find(params[:serving_id])
      @order = Order.new
  end
end
