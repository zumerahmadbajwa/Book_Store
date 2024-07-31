class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.references :customer
      t.references :book

      t.timestamps
    end
  end
end
