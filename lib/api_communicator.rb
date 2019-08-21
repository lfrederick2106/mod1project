def get_events_from_api(city)

    # @user = user
    
    response_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg&city=#{city}")
    response_hash = JSON.parse(response_string)

    if response_hash.length < 3
        puts "No events found, please try a different city."
        getCity
    else
        eventNameArray = response_hash["_embedded"]["events"].map
        nameHash = {}
        nameArray = []
        
        eventNameArray.each do |event|

            nameArray << event['name']
            nameHash.store("#{event['name']}", "#{event['_embedded']['venues'].first.values_at("name")}")
           
        end

        prompt = TTY::Prompt.new
        userSelection = prompt.select("Pick an event", nameArray, cycle: true)
        # puts userSelection
        theVenue = nameHash.values_at(userSelection).pop.to_str.tr('[]"', "")
        # puts theVenue
        
        # puts theVenue.pop.to_str.tr('[]"', "")
        # puts sample.to_str.tr('[]"', "")
        # puts userSelection.to_str.tr('[]"', "")
        newTicket = Ticket.create(ticketName: userSelection, venueName: theVenue, userName: @user)
        exit
    end

end