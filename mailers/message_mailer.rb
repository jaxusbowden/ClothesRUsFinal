class MessageMailer < ApplicationMailer

  def contact_me(message)
    @body = message.body

    mail to: "sanguinusshiboleth@gmail.com", from: message.email
  end

end
# Code taken from: https://www.murdo.ch/blog/build-a-contact-form-with-ruby-on-rails-part-1 by Stephen Murdoch, GitHub: https://github.com/murdoch/rails-contact-form-demo