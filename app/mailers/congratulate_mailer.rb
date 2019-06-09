class CongratulateMailer < MandrillMailer::TemplateMailer
  default from: 'bob@learnshortcuts.dev'

  def send_greencards_congrats(user,green_count)
    subject = "Congratulations!"
    if green_count == 1
      template = 'first-greencard-template' 
    else
      template = 'greencard-template'
    end
    mandrill_mail(
      template: template,
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.first_name,
        'GREENCARDS' => green_count
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end

  def send_remove_set(user,set_id)
    subject = "You've removed a Set in LearnShortcuts."
    
    mandrill_mail(
      template: 'remove-set-template',
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.first_name,
        'SETNAME' => Cluster.where(id: set_id).first.display_name
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end
end