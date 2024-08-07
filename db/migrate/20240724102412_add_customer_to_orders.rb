# frozen_string_literal: true

# class AddCustomerToOrders
class AddCustomerToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :customer, foreign_key: true
  end
end
