class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :teddy_sku
      t.monetize :amount
      t.jsonb :payment

      t.timestamps
      t.monetize :amount, currency: { present: false }
    end
  end
end
