class Venue < ActiveRecord::Base

    has_many :tickets
    has_many :users, through: :tickets

    def initialize(ticket, user)
        self.ticket = ticket
        self.user = user
    end


end