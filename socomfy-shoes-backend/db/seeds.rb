require 'faker'

User.destroy_all
Shoe.destroy_all
UserShoe.destroy_all

3.times{
    User.create(
        username: Faker::Name.unique.first_name.downcase,
    )
}

3.times{
    Shoe.create(
        name: Faker::Name.unique.first_name.downcase,
        image: "./socomfy-shoes-backend/public/shoe01.png",
        price: Faker::Commerce.price
    )
}





UserShoe.create(
    user_id: User.first.id,
    shoe_id: Shoe.first.id,
    comments: Faker::Lorem.sentence

    )
    UserShoe.create(
        user_id: User.second.id,
        shoe_id: Shoe.second.id,
        comments: Faker::Lorem.sentence
        
    )
    UserShoe.create(
        user_id: User.third.id,
        shoe_id: Shoe.third.id,
        comments: Faker::Lorem.sentence
        
    )

