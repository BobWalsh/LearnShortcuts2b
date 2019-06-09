class SendWelcomeMailer < MandrillMailer::TemplateMailer
  default from: 'bob@learnshortcuts.dev'

  def send_welcome(user)
    subject = "Welcome to LearnShortcuts"
    
    mandrill_mail(
      template: 'Welcome_to_LearnShortcuts',
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.name
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end
end