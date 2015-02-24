class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.integer :customer_id
      t.integer :store_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.text :memo

      t.timestamps
    end
  end
end
