class AgendaAMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.agenda_a_mailer.agenada_a_mail.subject
  #
  def agenada_a_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
