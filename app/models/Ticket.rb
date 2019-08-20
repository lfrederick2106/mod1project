class Ticket < ActiveRecord::Base

    belongs_to :users
    belongs_to :venues

    def initialize(venue, user)
        self.venue = venue
        self.user = user
    end

end