class WelcomeController < ApplicationController
  def index
    @is_purple = "is-success"
    # puts "GOT INDEX"
    # person is a guest or a user
    # @clusters = Cluster.all
    if !current_user
      # puts "is a guest"
      @guest_id = SecureRandom.uuid
      @user_id = "nil"
      @red_count = 0
      @yellow_count = 0
      @green_count = 0
      @white_count = 6
      @class_results = "navbar-menu button tooltip is-tooltip-bottom"
      @points_this_week = "-*-"
      @points_tooltip_text = "As a User, your learning earns Points!"
    else
      # is a user
      # puts "is a user"
      # todo - check that the user was not just a guest and there are scorecards for them
      if current_user.trial_days? >= 3
        @is_purple = "is-success"
      elsif current_user.trial_days? == 2
        @is_purple = "is-warning"
      else
        @is_purple = "is-danger"
      end
      @guest_id = "nil"
      @user_id = current_user.id
      # Points this week btn
      if current_user
        @red_count = Scorecard.redcards.where(user_id: current_user.id).all.count
        @yellow_count = Scorecard.yellowcards.where(user_id: current_user.id).count
        @green_count = Scorecard.greencards.where(user_id: current_user.id).count
        @white_count = Scorecard.whitecards.where(user_id: current_user.id).count
        # @points_this_week = DsPoint.where(user_id: current_user.id).points_this_week.to_a[0][1]
        # @points_last_week = DsPoint.where(user_id: current_user.id).points_last_week.to_a[0][1]
        # if @points_this_week > @points_last_week
        #   @class_results = "navbar-menu button is-primary tooltip is-tooltip-bottom"
        #   @points_tooltip_text = "You're ahead of last week's points of " + @points_last_week.to_s + "!"
        # elsif @points_this_week < @points_last_week
        #   @class_results = "navbar-menu button is-danger tooltip is-tooltip-bottom"
        #   @points_tooltip_text = "You're under last week's total points of " + @points_last_week.to_s + "."
        # else
        #   # they are tied
        #   @class_results = "navbar-menu button is-warning tooltip is-tooltip-bottom"
        #   @points_tooltip_text = "You've tied last week's total points of " + @points_last_week.to_s + "!"
        # end
      else
        @class_results = "navbar-menu button tooltip is-tooltip-bottom"
        @points_this_week = "-*-"
      end
      # end Points this week btn
    end
  end
end
