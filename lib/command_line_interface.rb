
prompt = TTY::Prompt.new

def welcome
    # puts out a welcome message here!
    # break if input == "quit" || input == "exit"
    prompt = TTY::Prompt.new
    q = prompt.select("Hello! Do you have a user name?", %w(Yes No)) 
        # q.required true
    if q == "Yes"
        puts "Please enter your user name."
        this_user_name = gets
    else 
        puts "Let's create a user name!"
        create_new_user
    end

      
    # choices = ['See events by zip code', 'See events by venue name', 'See events by category', 'See events by date', 'Purchase a ticket', 'Cancel a ticket', 'Update user name']
    # prompt.multi_select("What would you like to do?", choices)
end

def create_new_user
    prompt = TTY::Prompt.new
    puts "What would you like your user name to be?"
    this_user_name = gets
    u  = User.create({ userName: this_user_name }) 
  
    puts "OK, your user name is #{u.userName}."
end

def get_zip_code_from_user
    puts "Choose a zip code"
    this_zip = gets.strip
end

def get_venue_from_user
    puts "Choose a venue"
    event_venue = gets.strip
end

def get_event_type_from_user
    puts "Choose an event type"
    event_category = gets.strip
end

def get_city_from_user
    puts "Choose a city"
    event_city = gets.strip
end