class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :province_name
      t.decimal :hst
      t.decimal :pst
      t.decimal :gst

      t.timestamps
    end
  end
end
