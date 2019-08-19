class AddVenue < ActiveRecord::Migration[4.2]

        def change
            create_table :venue do |t|
                t.string :venueName
                t.string :userName
                t.string :ticketName
            end
        end

end