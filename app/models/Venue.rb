class Venue < ActiveRecord::Base
    has_many(:events)
    has_many(:users, { through: :events })

    validates :venueName, presence: true
    validates :zip_code, zipcode: { country_code: :us }

  def users
    tickets = []
    Ticket.all.each do | ticket | tickets << ticket.user
      if ticket.venue == self
      end
    end
    return tickets
  end

  def tickets
    Ticket.all.select { | ticket | ticket.venue == self}
  end

end