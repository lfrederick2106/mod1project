class User < ActiveRecord::Base
    has_many(:events)
    has_many(:venues, {through: :events})

    attr_reader :name, :user_name

  @@all = []

  def initialize(name, user_name)
    @name = name
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

#   def full_name
#     "#{first_name} #{last_name}"
#   end

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