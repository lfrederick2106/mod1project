
prompt = TTY::Prompt.new

def welcome
    # puts out a welcome message here!
    prompt = TTY::Prompt.new
    q = prompt.select("Welcome! Do you have a user name?", %w(Yes No)) 
        # q.required true
    if q == "Yes"
        puts "Please enter user name"
    else 
        puts "Let's create a user name!"
        create_new_user
    end

      
    # choices = ['See events by zip code', 'See events by venue name', 'See events by category']
    # prompt.multi_select("Welcome! What would you like to do?", choices)
end

def create_new_user
    puts "Please enter your name"
    this_name = gets.capitalize
    puts "Please enter a user name"
    this_user_name = gets
    User.create(this_name, this_user_name)
    puts "OK, your user name is #{user.name}"
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