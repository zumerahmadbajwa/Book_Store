# frozen_string_literal: true

# class BookOrderController
class BookOrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_user.orders.find(params[:order_id])
    @book_order = @order.book_orders.build(book_order_params)
    if @book_order.save
      redirect_to @order
    else
      render 'orders/show'
    end
  end

  def destroy
    @book_order = BookOrder.find(params[:id])
    @book_order.destroy
    redirect_to order_path(@book_order.order)
  end

  private

  def book_order_params
    params.require(:book_order).permit(:book_id, :order_id)
  end
end
