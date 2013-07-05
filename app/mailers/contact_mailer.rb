class ContactMailer < ActionMailer::Base
  default from: "ctest145@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send.subject
  #
  def create_contact(params)
    create_mail("ctest145@gmail.com",params)
    create_mail(params['email'],params)
  end

  private
  def create_mail(to, params)
    header = "Contact accepted.\r\nYour massage is following...\r\n\r\n=====begin=====\r\n"
    footer = "\r\n=====end====="
    mail(to: to, subject: params['subject'], body: header+params['body']+footer)
  end
end
