class User < ActiveRecord::Base

    has_many :tickets
    has_many :venues, through: :tickets

    # attr_accessor :userName



    # def initialize(name)
    #     self.userName = name
    #     # self.save
    #     puts self.class
    # end


end