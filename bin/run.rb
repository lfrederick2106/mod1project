require_relative "../lib/api_communicator.rb"
require_relative "../config/environment.rb"
# require_relative "../lib/command_line_interface.rb"

def getZip
    prompt = TTY::Prompt.new
    zip = prompt.ask("Greetings! Please enter your Zip Code to find events! or type Exit to quit the program.")
    if zip.downcase == "exit"
        exit
    else 
        get_events_from_api(zip)
        getZip
    end
end

def createUser()
    prompt = TTY::Prompt.new
    # puts "Hello! Please enter your name to begin:"
    name = prompt.ask('Please enter your name to begin, or type exit to quit the program', default: 'Anonymous')
    puts name
    if name.downcase == "exit"
        exit
    else
        newUser = User.create(userName: name, ticketName: "")
        puts "Welcome #{name}!"
    end
end

createUser
getZip