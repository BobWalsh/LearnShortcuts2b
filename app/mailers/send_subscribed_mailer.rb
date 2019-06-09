class SendSubscribedMailer < MandrillMailer::TemplateMailer
  default from: 'bob@learnshortcuts.dev'

  def send_subscribed(user)
    subject = "You're now a LearnShortcuts Subscriber"
    
    mandrill_mail(
      template: 'Subscribed_to_LearnShortcuts',
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.name,
        'PLAN' => user.current_plan_nickname

      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end
end