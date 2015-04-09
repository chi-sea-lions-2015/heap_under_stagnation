user1 = User.create(username: "paul", email: "paul@paul.com", password: "12345")
user2 = User.create(username: "sara", email: "sara@sara.com", password: "12345")
question = user1.questions.create(title: "Our first question", content: "What is love?")
