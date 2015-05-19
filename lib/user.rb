require 'data_mapper'
require 'bcrypt'

class User

include DataMapper::Resource

  attr_reader :password
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  validates_uniqueness_of :email

  property :id, Serial
  property :email, String, unique: true, message: 'This email is already exists'
  property :password_digest, Text

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
