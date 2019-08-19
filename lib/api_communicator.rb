def get_events_from_api()
    #make the web request
    # response_string = RestClient.get('https://app.ticketmaster.com/discovery/v1/events.json?dmaId=300&apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg')
    response_string = RestClient.get('https://app.ticketmaster.com/discovery/v2/events.json?postalCode=77005&radius=15&unit=miles&apikey=37zNi3JGSm5xKVWdPVAKsUJB7cfQVoyg')
    response_hash = JSON.parse(response_string)

    puts response_hash
    
    # resultsArray = response_hash.fetch("results")
    # films = []
    # resultsArray.each do |item|
    #   if item["name"].downcase == character_name
    #     films << item["films"]
    #   end
    #   return films
    # end
end