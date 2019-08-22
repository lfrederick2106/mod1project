class User < ActiveRecord::Base
    has_many(:events)
    has_many(:venues, {through: :events})

    validates :userName, presence: true
    validates :userName, uniqueness: true
    validates_associated :events
    validates_associated :venues, {through: :events}

  def venues
    tickets = []
    Ticket.all.each do | ticket | tickets << ticket.venue
      if ticket.user == self
      end
    end
    return tickets
  end

  def tickets
    Ticket.all.select { | ticket | ticket.user == self}
  end

end