# frozen_string_literal: true

# class AddRoleToUsers
class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer, default: 1
  end
end
