class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :name
      t.string :email
      t.string :address
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
