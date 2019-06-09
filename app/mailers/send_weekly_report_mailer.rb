class SendWeeklyReportMailer < MandrillMailer::TemplateMailer
  default from: 'bob@learnshortcuts.dev'

  def send_report(temp,user,week,rcc,gc,dir,pe,pb,dir2,didwell,fin,fit,sin,sit)
    subject = "Your Weekly LearnShortcuts Report"
    this_report = 1
    mandrill_mail(
      template: temp,
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.first_name,
        'WEEK_ENDING' => week.strftime("%A, %B %d,%Y"),
        'REVIEWED_CARD_COUNT' => rcc,
        'GREEN_CARDS' => gc,
        'DIRECTION' => dir,
        'POINTSEARNED' => pe,
        'POINTSBEFORE' => pb,
        'DIRECTION2' => dir2,
        'DIDWELL' => didwell,
        'FIRST_ITEM_NAME' => fin,
        'FIRST_ITEM_TEXT' => fit,
        'SECOND_ITEM_NAME' => sin,
        'SECOND_ITEM_TEXT' => sit,
        'LIST:COMPANY' => "47hats",
        'LIST:DESCRIPTION' => "LearnShortcuts is a 47hats startup.",
        'HTML:LIST_ADDRESS_HTML' => '<a href="mailto:bob@devstartups.com">bob@devstartups.com</a>'
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end
end