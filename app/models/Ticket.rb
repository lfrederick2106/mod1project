class Ticket < ActiveRecord::Base
    belongs_to(:user)
    belongs_to(:venue)

    # attr_accessor :venue, :user

    # @@all = []

    # def initialize(venue, user)
    #     @venue = venue
    #     @user = user
    #     @@all << self
    # end

    # def self.all
    #     @@all
    #   end

end