class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.admin_mailer.subject
  #
  def admin_mailer()
   

    mail to: "to@example.org", subject "権限移動確認メール"
  end
end
