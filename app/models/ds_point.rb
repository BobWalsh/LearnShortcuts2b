# == Schema Information
#
# Table name: ds_points
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer
#  point_type  :integer
#  point_value :integer
#  source_type :string
#  source_id   :integer
#  award_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DsPoint < ApplicationRecord
  belongs_to :user
  def self.points_last_month
    range = (Time.now.beginning_of_month - 1.month)..Time.now.end_of_month - 1.month
    group_by_month(:award_date, Time.zone, range).sum(:point_value)
  end
  def self.points_this_month
    range= (Time.now.beginning_of_month)..Time.now.end_of_month
    group_by_month(:award_date, Time.zone, range).sum(:point_value)
  end
  def self.points_two_weeks
    range = (Time.now.beginning_of_week - 2.week)..Time.now.end_of_week - 2.week
    group_by_week(:award_date, Time.zone, range).sum(:point_value)
  end
  def self.points_last_week
    range = (Time.now.beginning_of_week - 1.week)..Time.now.end_of_week - 1.week
    group_by_week(:award_date, Time.zone, range).sum(:point_value)
  end
  def self.points_this_week
    range= (Time.now.beginning_of_week)..Time.now.end_of_week
    group_by_week(:award_date, Time.zone, range).sum(:point_value)
  end
  def self.points_by_week
    group_by_week(:award_date, Time.zone).sum(:point_value)
  end
end
