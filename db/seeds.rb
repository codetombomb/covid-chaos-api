# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Game.destroy_all

10.times do 
    first_name =  Faker::Name.first_name
    last_name = Faker::Name.last_name
    Player.create(
        username: "#{first_name}.#{last_name}", 
        first_name: first_name, 
        last_name:  last_name, 
        email: "#{first_name[0].downcase}.#{last_name}@gmail.com", 
        age: rand(10..100)
        )
end

Player.all.each do |player|
    time_points = rand(20..150)
    sanitizer_coll = rand(5..15)
    tp_coll = rand(5..16)
    Game.create(
        player_id: player.id,
        score: 10,
        time: time_points,
        sanitizer_collected: sanitizer_coll,
        tp_collected: tp_coll
    )
end


