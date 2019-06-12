class StaticPagesController < ApplicationController
  def index
    @cheatsheets = Cheatsheet.all
    # Points this week btn
    if current_user
      if current_user.trial_days? >= 3
        @is_purple = "is-success"
      elsif current_user.trial_days? == 2
        @is_purple = "is-warning"
      else
        @is_purple = "is-danger"
      end
      @points_this_week = DsPoint.where(user_id: current_user.id).points_this_week.to_a[0][1]
      @points_last_week = DsPoint.where(user_id: current_user.id).points_last_week.to_a[0][1]
      if @points_this_week > @points_last_week
        @class_results = "navbar-menu button is-primary tooltip is-tooltip-bottom"
        @points_tooltip_text = "You're ahead of last week's points of " + @points_last_week.to_s + "!"
      elsif @points_this_week < @points_last_week
        @class_results = "navbar-menu button is-danger tooltip is-tooltip-bottom"
        @points_tooltip_text = "You're under last week's total points of " + @points_last_week.to_s + "."
      else
        # they are tied
        @class_results = "navbar-menu button is-warning tooltip is-tooltip-bottom"
        @points_tooltip_text = "You've tied last week's total points of " + @points_last_week.to_s + "!"
      end
    else
      @class_results = "navbar-menu button tooltip is-tooltip-bottom"
      @points_this_week = "-*-"
    end
    # end Points this week btn
  end
end
