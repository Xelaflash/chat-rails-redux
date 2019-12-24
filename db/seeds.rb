puts "start destroy"

Message.destroy_all
User.destroy_all
Channel.destroy_all

puts "End destroy"

puts "start seeds"

channel_name = %w(Hardware Software Ruby Javascript React Swift Misc)

channels = channel_name.map do |name|
  Channel.find_or_create_by(name: name)
end

nickname = ["Toto l'asticot", "ClaudyDikkenek", "prince du bled93", "MondeDeMerde", "blagounette33", "LesZnuls"]

users_mails = %w(toto@toto.com jean.blaguin@me.com claudyfaucan@gmail.com aladdin@jafar.com patrick-abitbol@mondedemerde.com lamouchequipete@lesnuls.fr )

users = users_mails.map do |mail|
  User.create(email: "#{mail}", nickname: nickname.sample, password: "123456")
end

10.times do
  Message.create! user: users.sample, channel: channels.sample, content: Faker::TvShows::HowIMetYourMother.quote
end

10.times do
  Message.create! user: users.sample, channel: channels.sample, content:
  Faker::TvShows::DumbAndDumber.quote
end

10.times do
  Message.create! user: users.sample, channel: channels.sample, content:
  Faker::TvShows::SouthPark.quote
end
10.times do
  Message.create! user: users.sample, channel: channels.sample, content:
  Faker::TvShows::RickAndMorty.quote
end

puts "end seed"
