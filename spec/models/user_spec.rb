require 'rails_helper'

describe User do
  let(:user) {User.new(username: "paul", email: "paul@paul.com", password: "12345")}

  it "should have a username" do
    expect(user.username).to eq("paul")
  end
end
