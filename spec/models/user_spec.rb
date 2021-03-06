require 'rails_helper'

RSpec.describe User, type: :model do
 describe "creation" do
 	before do 
 		@user=User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "hiten", last_name: "sai")
 	end
 	it "can be created" do
        expect(@user).to be_valid
    end
    it "Cannot have first name and last name empty" do
        @user.first_name= nil
        @user.last_name= nil
        expect(@user).to_not be_valid 
       end
end
describe "custom name methods" do
	it "has a full name method" do
		expect(@user.full_name).to eq("sai, hiten")
	end
end		
end
