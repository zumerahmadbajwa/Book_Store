# frozen_string_literal: true

# class CreateBookOrders
class CreateBookOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :book_orders do |t|
      t.references :book
      t.references :order

      t.timestamps
    end
  end
end
