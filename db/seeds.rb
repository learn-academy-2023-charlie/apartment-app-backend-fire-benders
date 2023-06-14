# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

apartments1 = [
    {street: 'World 1-1',
    unit: '1',
    city: 'Overworld',
    state: 'California',
    square_footage: 1200,
    price: '$4,000',
    bedrooms: 3,
    bathrooms: 2,
    pets: 'Yes'
    image: 'https://mario.wiki.gallery/images/2/24/SMB_Super_Mushroom_Screenshot.png'
}
]

apartments2 = [ 
    {street: 'World 1-2',
    unit: '2',
    city: 'Underground',
    state: 'California',
    square_footage: 1800,
    price: '$25,000',
    bedrooms: 9,
    bathrooms: 1,
    pets: 'Yes'
    image: 'https://mario.wiki.gallery/images/3/39/SMB_NES_World_2-3_Screenshot.png'
}
]

apartments1.each do |apartment|
    user1.apartments.create(apartment)
    puts "Creating apartment #{apartment}"
end

apartments2.each do |apartment|
    user2.apartments.create(apartment)
    puts "Creating apartment #{apartment}"
end



