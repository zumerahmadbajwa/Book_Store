# frozen_string_literal: true

# class AddColumnToUsers
class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
  end
end
