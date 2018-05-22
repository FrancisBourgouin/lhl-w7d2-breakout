require 'faker'

ChannelMembership.destroy_all
Message.destroy_all
Channel.destroy_all
Player.destroy_all

10.times do
  Player.create({
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    points: Faker::Number.number(5)
  })
end

5.times do
  channel = Channel.new(
    name: Faker::Internet.slug
  )
  channel.save

  5.times do 
    Message.create(
      title: Faker::Lorem.word,
      content: Faker::Lorem.sentence,
      url: Faker::Internet.url,
      channel_id: channel.id,
      player_id: rand(Player.first.id..Player.last.id)
    )
  end
end

10.times do 
  ChannelMembership.create(
    player_id: rand(Player.first.id..Player.last.id),
    channel_id: rand(Channel.first.id..Channel.last.id),
    admin: Faker::Boolean.boolean
  )
end