class AddUser < ActiveRecord::Migration[4.2]

        def change
            create_table :user do |t|
                t.string :userName
                t.string :ticketName
            end
        end

end