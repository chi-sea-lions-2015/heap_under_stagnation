require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST create" do
    context "when valid params are passed" do
      it "creates a new User" do
        params = {username: "susan", email: "susan@susan.com", password: "12345"}
        user = User.new(params)
        user.save
        expect(user.id).to match(Integer)
      end

      it "assigns a newly created user as @user" do
        user = User.new(username: "Ted", email: "ted@ted.com", password: "12345")
        expect(User).to receive(:new).and_return(user)
        puts user.username
        user.save
        puts user.id
        post :create, :user => {username: "Ted", email: "ted@ted.com", password: "12345"}
        expect(assigns(:user).username).to eq(user.username)
      end

      it "redirects to the created user" do
        post :create, {:user => {username: "susan", email: "susan@susan.com", password: "12345"}}
        expect(response).to redirect_to("/login")
      end
    end
  end
end
