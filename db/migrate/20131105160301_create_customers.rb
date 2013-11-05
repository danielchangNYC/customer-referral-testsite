class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :referring_customer_id

      t.timestamps
    end
    add_index :customers, :referring_customer_id
  end
end
