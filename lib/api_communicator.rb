def get_events_from_api(zipCode)
    #make the web request
    # response_string = RestClient.get('https://app.ticketmaster.com/discovery/v1/events.json?dmaId=300&apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg')
    response_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zipCode}&radius=15&unit=miles&apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg")
    response_hash = JSON.parse(response_string)


     nameArray = []
     eventArray = response_hash["_embedded"]["events"].map
    #  nameArray = eventArray["_embedded"]["venues"].map
    
     eventArray.each do |event|
        # container1 = ""
        # container2 = ""
        # puts
        print event["name"] + "             "
        # puts
        event["_embedded"]["venues"].each do |venue|
            puts "@" + venue["name"]
        end
     end

    #  nameArray.each do |venue|
    #     puts venue
    #  end


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