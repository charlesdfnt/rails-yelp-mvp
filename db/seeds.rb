puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"french")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"japanese")
puts "Created Pizza East"
Restaurant.create(name: "Tour d'Argent", address: "2 bis rue de tralalal", category: 'french')
puts "Created Pizza East"
Restaurant.create(name: "Brigade", address: "2 bis rue de tralalal", category: 'italian')
puts "Created Pizza East"
Restaurant.create(name: "BPoolvord", address: "oberkampf", category: 'belgian')

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
