class Ticket < ActiveRecord::Base

    belongs_to :user
    belongs_to :venue

    validates :ticketName, :userName, :venueName, presence: true
    
end