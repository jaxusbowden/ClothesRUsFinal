class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :body
    validates :name, :email, :body, presence: true
end
# Code taken from: https://www.murdo.ch/blog/build-a-contact-form-with-ruby-on-rails-part-1 by Stephen Murdoch, GitHub: https://github.com/murdoch/rails-contact-form-demo