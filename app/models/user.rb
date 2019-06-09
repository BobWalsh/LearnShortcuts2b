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

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :ds_points       
         
  TRIAL_PERIOD = 7.days

  BETA_FREE_CUTOFF = "2019-06-01 23:50:00"

  def is_an_admin?
    self.is_an_admin
  end

  def has_subscription?
    self.subscription_is_active
  end

  def during_trial?
    created_at > TRIAL_PERIOD.ago
  end

  def trial_days?
    (((created_at - TRIAL_PERIOD.ago) / (60 * 60 * 24)) + 1).to_i
  end

  def comped_user?
    self.comp_user
  end

  def must_pay?
    if during_trial? || self.current_plan_nickname
      return false
    elsif comped_user?
      return false
    elsif subscription_is_active and (subscribed_thru_date.nil? == false and not(subscribed_thru_date < Time.zone.now.end_of_day))
      return false
    else
      return true
    end
  end

  def user_welcome
    result = SendWelcomeMailer.send_welcome(self).deliver_now
    if result[0]["status"] == "sent"
      Rails.logger.debug "Welcome email sent to #{self.email}. Transaction ID: #{result[0]["_id"]}."
    else
      Rails.logger.debug "ERROR sending Welcome email to #{self.email}. Reason: #{result[0]["reject_reason"]}."
    end
  rescue => e
    puts "Couldn't send_userwelcome_email"
  end

  def congratulate_green(green_count)
    puts "got user_add_set with: " + green_count.to_s
    result = CongratulateMailer.send_greencards_congrats(self, green_count).deliver_now
    if result[0]["status"] == "sent"
      Rails.logger.debug "Congrats Green sent to #{self.email} for #{green_count} Green Cards. Transaction ID: #{result[0]["_id"]}."
    else
      Rails.logger.debug "ERROR sending Added Set email to #{self.email}. Reason: #{result[0]["reject_reason"]}."
    end
  rescue => e
    puts "Couldn't user_add_set"
  end

  def user_add_set(set_id)
    puts "got user_add_set with: " + set_id.to_s
    result = SendSetsMailer.send_add_set(self, set_id).deliver_now
    if result[0]["status"] == "sent"
      Rails.logger.debug "Added Set email sent to #{self.email}. Transaction ID: #{result[0]["_id"]}."
    else
      Rails.logger.debug "ERROR sending Added Set email to #{self.email}. Reason: #{result[0]["reject_reason"]}."
    end
  rescue => e
    puts "Couldn't user_add_set"
  end

  def user_remove_set(set_id)
    puts "got user_remove_set with: " + set_id.to_s
    result = SendSetsMailer.send_remove_set(self, set_id).deliver_now
    if result[0]["status"] == "sent"
      Rails.logger.debug "Added Set email sent to #{self.email}. Transaction ID: #{result[0]["_id"]}."
    else
      Rails.logger.debug "ERROR sending Added Set email to #{self.email}. Reason: #{result[0]["reject_reason"]}."
    end
  rescue => e
    puts "Couldn't user_remove_set"
  end

  def send_subscribed_email
    result = SendSubscribedMailer.send_subscribed(self).deliver_now
    if result[0]["status"] == "sent"
      Rails.logger.debug "Subscribed email sent to #{self.email}. Transaction ID: #{result[0]["_id"]}."
    else
      Rails.logger.debug "ERROR sending Subscribed email to #{self.email}. Reason: #{result[0]["reject_reason"]}."
    end
  rescue => e
    puts "Couldn't send_userwelcome_email"
  end

  def first_name
    self.name.blank? ? "" : self.name.split(" ")[0]
  end
  def authenticatable_salt
    "#{super}#{session_token}"
  end

  def invalidate_session!
    self.session_token = SecureRandom.hex
  end

  def self.points_this_week
    range = (Time.now.beginning_of_week)..Time.now.end_of_week
    group_by_week(self.dspoints.award_date, Time.zone, range).sum(self.dspoints.point_value)
  end

end
