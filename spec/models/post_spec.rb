require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'creation' do
  	before do
  		@post=Post.create(date: Date.today, rationale: "text")
  	end	
   it 'can be posted' do
   	expect(@post).to_not be_valid
   end
   it 'cannot be created with empty date and rationale' do
    @post.date=nil
    @post.rationale=nil
    expect(@post).to_not be_valid
    end
  end
end
