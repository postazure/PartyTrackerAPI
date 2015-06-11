require 'rails_helper'

describe User do
  describe "#init" do
    it "has password and email" do
      user = User.create!({
        email: "fred@fred.com",
        password: "password",
      })

      expect(user.id).to be
    end
  end

  describe "validates" do
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password) }
  end
end
