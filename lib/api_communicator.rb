require 'rest-client'
require 'json'

# validates :zipcode, zipcode: { country_code_attribute: :postal_code }
# validates_format_of :zip_code, :with => /^\d{5}(-\d{4})?$/, :message => "should be in the form 12345"

def find_events_by_zip_code(zip_code)
    events_results_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=FU4GMZjNo1N2AxOwXrVwwmZDw8MjQD8f&postalCode=#{zip_code}")
    events_results_hash = JSON.parse(events_results_string)
    
    if events_results_hash["_embedded"] == nil
        puts "No events found"
    else
        events_array = events_results_hash["_embedded"]["events"]
    events_array.each do |event|
        puts event["name"]
        end
    end
end 

def find_events_by_type(classificationName, city)
    events_results_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?classificationName=#{classificationName}&city=#{city}&apikey=FU4GMZjNo1N2AxOwXrVwwmZDw8MjQD8f")
    events_results_hash = JSON.parse(events_results_string)
    
    if events_results_hash["_embedded"] == nil
        puts "No events found"
    else
        events_array = events_results_hash["_embedded"]["events"]
    events_array.each do |event|
        puts event["name"]
        end
    end
end 

def find_events_by_venue(venue)
    events_results_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=FU4GMZjNo1N2AxOwXrVwwmZDw8MjQD8f&keyword=#{venue}")
    events_results_hash = JSON.parse(events_results_string)
    
    if events_results_hash["_embedded"] == nil
        puts "No events found"
    else
        events_array = events_results_hash["_embedded"]["events"]
    events_array.each do |event|
        puts event["name"]
        end
    end
end

def find_events_by_date(start_date, end_date, city)
    events_results_string = RestClient.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=FU4GMZjNo1N2AxOwXrVwwmZDw8MjQD8f&localStartEndDateTime=#{start_date},#{end_date}&city=#{city}")
    events_results_hash = JSON.parse(events_results_string)
    
    if events_results_hash["_embedded"] == nil
        puts "No events found"
    else
        events_array = events_results_hash["_embedded"]["events"]
    events_array.each do |event|
        puts event["name"]
        end
    end
end