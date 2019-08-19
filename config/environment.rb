
require "sinatra/activerecord"

require_relative "../app/models/Ticket.rb"
require_relative "../app/models/User.rb"
require_relative "../app/models/Venue.rb"

require 'bundler/setup'
require 'rest-client'
require 'json'
require 'pry'




Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)

