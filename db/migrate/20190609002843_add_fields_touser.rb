class AddFieldsTouser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_brand,:string
    add_column :users, :card_expiration_month, :integer
    add_column :users, :card_expiration_year, :integer
    add_column :users, :card_last_4, :string
    add_column :users, :comp_user, :boolean
    add_column :users, :current_plan_id, :string
    add_column :users, :current_plan_interval_count, :string
    add_column :users, :current_plan_interval, :string
    add_column :users, :current_plan_nickname, :string
    add_column :users, :cust_id, :string
    add_column :users, :gets_no_email,:boolean, default: false
    add_column :users, :is_an_admin, :boolean
    add_column :users, :sent_trial_expiration_email, :datetime
    add_column :users, :session_token, :string
    add_column :users, :stripe_card_id, :string
    add_column :users, :stripe_customer_id, :string
    add_column :users, :stripe_subscription_id, :string
    add_column :users, :subscribed_thru_date, :datetime
    add_column :users, :subscription_ends, :boolean, default:false  
    add_column :users, :subscription_is_active, :boolean
    add_column :users, :subscription_plan_id, :string
    add_column :users, :subscription_thru_date, :datetime
    add_column :users, :weekly_email_day, :integer
  end
end
