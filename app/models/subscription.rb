# == Schema Information
#
# Table name: subscriptions
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  stripe_subscription_id :string
#  interval               :string
#  interval_count         :integer
#  amount                 :integer
#  active                 :boolean          default(TRUE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Subscription < ApplicationRecord
  
end
