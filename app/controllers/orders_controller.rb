class OrdersController < ApplicationController
  def new
      @serving = Serving.find(params[:serving_id])
      @order = Order.new
  end
end
