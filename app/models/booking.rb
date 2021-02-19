class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
