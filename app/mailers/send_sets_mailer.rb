class SendSetsMailer < MandrillMailer::TemplateMailer
  default from: 'bob@learnshortcuts.dev'

  def send_add_set(user,set_id)
    subject = "You've added a Set in LearnShortcuts."
    puts set_id
    thesetname = Cluster.where(id: set_id).first.display_name
    puts thesetname
    puts thesetname
    mandrill_mail(
      template: 'add-set-template',
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.first_name,
        'SETNAME' => thesetname
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end

  def send_remove_set(user,set_id)
    subject = "You've removed a Set in LearnShortcuts."
    puts set_id
    thesetname = Cluster.where(id: set_id).first.display_name
    puts thesetname
    puts thesetname
    mandrill_mail(
      template: 'remove-set-template',
      subject: subject,
      to: user.email,
      vars: {
        'EMAIL' => user.email,
        'First_Name' => user.first_name,
        'SETNAME' => thesetname
      },
      important: true,
      inline_css: true,
      async: true,
      view_content_link: true,
     )
  end
end