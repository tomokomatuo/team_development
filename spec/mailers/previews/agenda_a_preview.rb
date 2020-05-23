# Preview all emails at http://localhost:3000/rails/mailers/agenda_a
class AgendaAPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/agenda_a/agenada_a_mail
  def agenada_a_mail
    AgendaAMailer.agenada_a_mail
  end

end
