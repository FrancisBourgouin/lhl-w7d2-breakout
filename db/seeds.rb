require 'faker'

ChannelMembership.destroy_all
Message.destroy_all
Channel.destroy_all
User.destroy_all

10.times do
  User.create({
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
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
      user_id: rand(User.first.id..User.last.id)
    )
  end
end

10.times do 
  ChannelMembership.create(
    user_id: rand(User.first.id..User.last.id),
    channel_id: rand(Channel.first.id..Channel.last.id),
    admin: Faker::Boolean.boolean
  )
end