#require 'bcrypt'


class User < ActiveRecord::Base
  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /[\w*.?]*@[\w{2,}.?]{2,}/}
  validates :password, presence: true

  # include BCrypt

  # def password
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end
end
