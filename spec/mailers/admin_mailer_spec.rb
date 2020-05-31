require "rails_helper"

RSpec.describe AdminMailer, type: :mailer do
  describe "admin_mailer" do
    let(:mail) { AdminMailer.admin_mailer }

    it "renders the headers" do
      expect(mail.subject).to eq("Admin mailer")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
