user1 = User.create(username: "paul", email: "paul@paul.com", password: "12345")
user2 = User.create(username: "sara", email: "sara@sara.com", password: "12345")
user3 = User.create(username: "taylor", email: "taylor@taylor.com", password: "12345")
user4 = User.create(username: "chase", email: "chase@chase.com", password: "12345")

10.times do |n|
  samples = User.all.sample(11)
  asker = samples.pop
  Question.create(title: Faker::Lorem.word)
