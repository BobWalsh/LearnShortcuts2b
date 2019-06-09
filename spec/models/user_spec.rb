# == Schema Information
#
# Table name: users
#
#  id                          :bigint           not null, primary key
#  email                       :string           default(""), not null
#  encrypted_password          :string           default(""), not null
#  reset_password_token        :string
#  reset_password_sent_at      :datetime
#  remember_created_at         :datetime
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  name                        :string
#  card_brand                  :string
#  card_expiration_month       :integer
#  card_expiration_year        :integer
#  card_last_4                 :string
#  comp_user                   :boolean
#  current_plan_id             :string
#  current_plan_interval_count :string
#  current_plan_interval       :string
#  current_plan_nickname       :string
#  cust_id                     :string
#  gets_no_email               :boolean          default(FALSE)
#  is_an_admin                 :boolean
#  sent_trial_expiration_email :datetime
#  session_token               :string
#  stripe_card_id              :string
#  stripe_customer_id          :string
#  stripe_subscription_id      :string
#  subscribed_thru_date        :datetime
#  subscription_ends           :boolean          default(FALSE)
#  subscription_is_active      :boolean
#  subscription_plan_id        :string
#  subscription_thru_date      :datetime
#  weekly_email_day            :integer
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
