desc 'Create Weekly Report records.'
task emailreport: :environment do
  log = ActiveSupport::Logger.new('log/weekly_report.log')
  start_time = Time.now

  template = "WeeklyReport_with_announcements"
  puts "**************************"
  puts "Weekly Report Rake Task 1"
  puts "**************************"
  # constants
  report_id = 1 #the id of this report
  weekly_reports = WeeklyReport.where(report_id: report_id)
  puts "reports: " + weekly_reports.count.to_s
  
  weekly_reports.each do |rpt|
    user = User.where(id: rpt.user_id).first
    result = SendWeeklyReportMailer.send_report(
      template,
      user,
      rpt.week_ending,
      rpt.reviewed_card_count,
      rpt.green_cards,
      rpt.direction,
      rpt.points_earned,
      rpt.points_before,
      rpt.direction2,
      rpt.didwell,
      rpt.first_item_name,
      rpt.first_item_text,
      rpt.second_item_name,
      rpt.second_item_text
    ).deliver_now
    if result[0]["status"] == "sent"
      rpt.report_sent = true
      rpt.save
      Rails.logger.debug "Weekly report email sent to #{user.email}. Transaction ID: #{result[0]['_id']}."
    else
      Rails.logger.debug "ERROR Weekly report email email to #{user.email}. Reason: #{result[0]["reject_reason"] }."
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



