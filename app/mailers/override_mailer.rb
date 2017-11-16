class OverrideMailer < ActionMailer::Base
  default from: "from@example.com"

  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.override_mailer.daily_report.subject
  #
  def daily_report
    @greeting = "Hi, this is the daily override report!"
    @overrides = Event.override



    mail( :to => "patrickjmcd@gmail.com",
          :subject => "Daily Override Report")

  end
end
