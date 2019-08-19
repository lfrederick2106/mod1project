class AddTicket < ActiveRecord::Migration[4.2]

        def change
            create_table :ticket do |t|
                t.string :ticketName
                t.string :userName
                t.string :venueName
            end
        end

end