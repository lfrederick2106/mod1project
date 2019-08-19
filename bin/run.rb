require_relative "../lib/api_communicator.rb"
require_relative "../config/environment.rb"
# require_relative "../lib/command_line_interface.rb"

def getZip
    puts "Greetings! Please enter your Zip Code to find events! or type Exit to quit the program."
    zip = gets.chomp
    if zip.downcase == "exit"
        return
    else 
        get_events_from_api(zip)
        getZip
    end
end

# get_events_from_api(zip)
getZip