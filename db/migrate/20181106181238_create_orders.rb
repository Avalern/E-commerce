class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.datetime :order_date
      t.decimal :amount_due
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
