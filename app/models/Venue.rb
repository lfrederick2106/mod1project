class Venue < ActiveRecord::Base

    has_many :ticket
    has_many :user, through: :ticket


end