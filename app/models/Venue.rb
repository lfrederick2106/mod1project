class Venue < ActiveRecord::Base
    has_many(:events)
    has_many(:users, { through: :events })

  #   attr_reader :name, :users, :tickets

  # @@all = []

  # def initialize(name)
  #   @name = name
  #   @@all << self
  # end

  # def self.all
  #   @@all
  # end

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