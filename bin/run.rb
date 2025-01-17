require_relative "../lib/api_communicator.rb"
require_relative "../config/environment.rb"

def getCity
    prompt = TTY::Prompt.new
    city = prompt.ask("Greetings! Please enter your City to find events! or type Exit to quit the program.")
    if city.downcase == "exit"
        exit
    else 
        get_events_from_api(city)
        getCity
    end
end

def createUser()
    prompt = TTY::Prompt.new
    name = prompt.ask('Please enter your name to begin, or type exit to quit the program', default: 'Anonymous')
    puts name
    if name.downcase == "exit"
        exit
    else
        $user = User.create(userName: name, ticketName: "")
        puts "Welcome #{name}!"
    end
end

createUser
getCity