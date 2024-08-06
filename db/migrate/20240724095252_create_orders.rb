# frozen_string_literal: true

# class CreateOrders
class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.time :date_submited
      t.decimal :total
      t.integer :state

      t.timestamps
    end
  end
end
