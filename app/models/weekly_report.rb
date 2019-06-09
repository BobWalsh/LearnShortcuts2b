# == Schema Information
#
# Table name: weekly_reports
#
#  id                  :bigint           not null, primary key
#  report_id           :integer
#  user_id             :integer
#  week_ending         :datetime
#  reviewed_card_count :integer
#  green_cards         :integer
#  direction           :text
#  points_earned       :integer
#  direction2          :text
#  didwell             :text
#  first_item_name     :string
#  first_item_text     :text
#  second_item_name    :string
#  second_item_text    :text
#  report_sent         :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class WeeklyReport < ApplicationRecord
end
