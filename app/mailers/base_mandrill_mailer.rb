require "mandrill"

class BaseMandrillMailer < ActionMailer::Base
  default(
    from: "bob@learnshortcuts.dev",
    reply_to: "bob@learnshortcuts.dev"
  )

  private

  def send_mail(email, subject, body)
    mail(to: email, subject: subject, body: body, content_type: "text/html")
  end

  def mandrill_template(template_name, attributes)
    mandrill = Mandrill::API.new('eQuxpfME1NG42qXWy4rL6A')

    merge_vars = attributes.map do |key, value|
      { name: key, content: value }
    end

    mandrill.templates.render(template_name, [], merge_vars)["html"]
  end
end