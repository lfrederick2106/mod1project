def get_events_from_api(zipCode)
    
    response_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zipCode}&apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg")
    response_hash = JSON.parse(response_string)

    if response_hash.length < 3
        puts "No events found, please try a different zip code"
        getZip
    else
        eventNameArray = response_hash["_embedded"]["events"].map
        tempNameArray = []
        
        eventNameArray.each do |event|

            # print event["name"] + "             "
            tempNameArray << event["name"]
            event["_embedded"]["venues"].each do |venue|
                puts "@" + venue["name"]
            end
        end
        prompt = TTY::Prompt.new
        userSelection = prompt.select("Pick an event", tempNameArray, cycle: true)
        puts userSelection
        exit
    end


    # puts response_hash["_embedded"]["events"][0]["_embedded"]["venues"][0]["name"]
    
    # resultsArray = response_hash.fetch("results")
    # films = []
    # resultsArray.each do |item|
    #   if item["name"].downcase == character_name
    #     films << item["films"]
    #   end
    #   return films
    # end
end