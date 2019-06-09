desc 'Create Weekly Report records.'
task createreport: :environment do
  log = ActiveSupport::Logger.new('log/weekly_report.log')
  start_time = Time.now
  puts "**************************"
  puts "Weekly Report Rake Task 1"
  puts "**************************"
  # constants
  report_id = 1 #the id of this report
  targ_users = User.all
  first_item_exists = true #There is a new Set this Week.
  second_item_exists = true #There is a new Feature this Week.

  if targ_users
    targ_users.each do |user|
      puts "name of user is " + user.name
      puts user.first_name
      puts user.id
      # start the rec
      wr = WeeklyReport.new
      
      # define/assign attributes
      wr.user_id = user.id
      wr.report_id = report_id
      wr.week_ending = Time.now.end_of_week - 1.week
      wr.reviewed_card_count = Scorecard.where(user_id: user.id).count
      wr.green_cards =Scorecard.greencards.where(user_id: user.id).count
      points_2_weeks_ago = DsPoint.where(user_id: user.id).points_two_weeks.to_a[0][1]
      points_last_week = DsPoint.where(user_id: user.id).points_last_week.to_a[0][1]
      points_diff = points_last_week - points_2_weeks_ago

      #positive is good.
      if points_diff >= 0
        wr.direction = "an increase of " + points_diff.to_s + " points"
        wr.didwell = "Keep up the good work! Regular short review sessions in LearnShortcuts pay off!"
      else
        wr.direction = "a decrease of " + points_diff.to_s + " points"
        wr.didwell = "You can do better! If you arn't spending time in LearnShortcuts daily, you're missing 40% of the value of potential value."
      end
      wr.points_earned = points_last_week

      wr.direction2 = "increasing your points to " + DsPoint.where(user_id: user.id).sum(:point_value).to_s
      wr.points_before = points_2_weeks_ago

      if first_item_exists
        wr.first_item_name = "New Git Basics Set added"
        wr.first_item_text = "Learn the basics of the Git version control system by adding the new 'Git Basics' Set to your cards in the Sets section of LearnShortcuts."
      end
      if second_item_exists
        wr.second_item_name = "New Feature added to Review Cards"
        wr.second_item_text = "Click the tag of any Card you are reviewing, and LearnShortcuts will focus only on that Set."
      end
      # save rec
      wr.save
      wr.inspect
    end
  end
  end_time = Time.now
  duration = (start_time - end_time) / 1.minute
  puts "**************************"
  puts "Task finished at #{end_time} and took #{duration} minutes."
  puts "**************************"
  log.info "Task finished at #{end_time} and took #{duration} minutes."
  log.close
end

