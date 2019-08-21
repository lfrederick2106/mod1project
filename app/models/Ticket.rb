class Ticket < ActiveRecord::Base

    belongs_to :user
    belongs_to :venue

    # def initialize(venue, user)
    #     self.venue = venue
    #     self.user = user
    # end

end