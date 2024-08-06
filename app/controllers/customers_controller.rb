# frozen_string_literal: true

# class CustomerController
class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to @customer
    else
      render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:f_name, :l_name, :email)
  end
end
