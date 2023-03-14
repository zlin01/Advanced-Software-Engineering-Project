# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

concerts = [{:band => 'Paramore', :location => 'Denver'},
            {:band => 'Metallica', :location => 'Boulder'},
            {:band => 'Switchfoot', :location => 'Colorado Springs'},
            {:band => 'Black Sabbath', :location => 'Denver'},
            {:band => 'Linkin Park', :location => 'Denver'},
            {:band => 'Chevelle', :location => "Los Angeles"},
            {:band => 'Imagine Dragons', :location => "New York City"}]


concerts.each do |concert|
    Concert.create!(concert)
end



