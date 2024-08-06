# frozen_string_literal: true

# class CreateBooks
class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.date :year_published
      t.boolean :out_of_print
      t.references :author

      t.timestamps
    end
  end
end
