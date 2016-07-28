require "faker"


10.times do
  User.create(username: Faker::Internet.user_name,
              email: Faker::Internet.email,
              password: "123")
end

500.times do
  Comment.create(content: Faker::Lorem.paragraph,
                 post_id: rand(1..10),
                 user_id: rand(1..10))
end

10.times do
  Post.create(content: Faker::Lorem.paragraph,
                 user_id: rand(1..10))
end
