5.times do |n|
  User.create!(username: "user#{n+1}", password: "password")
end

5.times do |n|
  user = User.find(n + 1)
  user.messages.create!(body: "Hi I'm #{user.username}")
end