# 500.times do
#
#   Supporter.create  name:        Faker::Name.name,
#                     email:       Faker::Internet.email,
#                     department:  Faker::Commerce.department,
#                     message:     Faker::ChuckNorris.fact
#   end
#
#
#   puts Cowsay.say "500 inputs done!!"

    200.times do

    a= Supporter.last
    a.destroy
    end

  puts Cowsay.say "200 inputs destroyed!!"
