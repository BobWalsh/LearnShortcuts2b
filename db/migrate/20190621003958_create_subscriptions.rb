class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :stripe_subscription_id
      t.string :interval
      t.integer :interval_count
      t.integer :amount
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
