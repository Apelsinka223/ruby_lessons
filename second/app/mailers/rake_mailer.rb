class RakeMailer < ActionMailer::Base
  default from: 'apelsinka223@gmail.com'

  def lesson_plan(email)
    mail(to: email, subject: "Life is strange")
  end
end