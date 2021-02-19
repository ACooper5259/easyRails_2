class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :bookings
  before_validation :strip_whitespace

  def strip_whitespace
    self.first_name.strip! unless self.first_name.nil?
    self.last_name.strip! unless self.last_name.nil?
    self.email.strip! unless self.email.nil?
  end
  
end
