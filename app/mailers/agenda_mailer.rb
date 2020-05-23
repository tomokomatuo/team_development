class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda,user_emails)
    @agenda = agenda
    mail to: user_emails, subject: "アジェンダ削除の確認メール"
  end
end
