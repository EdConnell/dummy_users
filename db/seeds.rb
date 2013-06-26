require 'faker'

# 30.times do
#   new_user = {user_name: "#{Faker::Internet.user_name}", email: "#{Faker::Internet.email}", password: "#{(0...8).map{65.+(rand(25)).chr}.join}"}
#   User.create!(new_user)
# end

User.create!({user_name: 'ted', email: 'mr.awesome@sauce.com', password: 'abcd1234'})
