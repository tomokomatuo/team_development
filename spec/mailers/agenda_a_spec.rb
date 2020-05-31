require "rails_helper"

RSpec.describe AgendaAMailer, type: :mailer do
  describe "agenada_a_mail" do
    let(:mail) { AgendaAMailer.agenada_a_mail }

    it "renders the headers" do
      expect(mail.subject).to eq("Agenada a mail")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
