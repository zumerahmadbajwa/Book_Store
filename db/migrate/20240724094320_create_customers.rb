class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :email

      t.timestamps
    end
  end
end
