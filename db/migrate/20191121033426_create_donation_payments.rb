class CreateDonationPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :donation_payments do |t|
      t.belongs_to :coin
      t.belongs_to :donation
      t.belongs_to :incoming_transaction

      t.string :state, default: "pending"
      t.string :tx_id, null: false
      t.decimal :amount, precision: 18, scale: 8
      t.integer :block
      t.datetime :detected_at
      t.datetime :confirmed_at
      t.timestamps
    end
  end
end