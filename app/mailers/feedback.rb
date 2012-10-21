class Feedback < ActionMailer::Base
  def like_a_boss feedback
    mail(to: 'trevoke@gmail.com',
         from: 'dfworldgen@dfworldgen.com',
         subject: 'feedback',
         body: feedback).deliver
  end
end