class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = current_user.orders.build
  end

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(book_orders_attributes: [:customer_id, :state])
  end
end
