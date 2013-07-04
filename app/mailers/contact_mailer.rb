class ContactMailer < ActionMailer::Base
  # default from: "example@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send.subject
  #
  def send
    @user = User.find(params[:id])
    @from = @user.email

    mail to: 'nishikawa.ryo@bpsinc.jp'
  end
end
