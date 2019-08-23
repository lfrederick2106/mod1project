class Venue < ActiveRecord::Base

  has_many :tickets
  has_many :users, through: :tickets

  validates :venueName, presence: true
  
end