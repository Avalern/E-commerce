class RemoveAmountDueFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :amont_due, :decimal
  end
end
