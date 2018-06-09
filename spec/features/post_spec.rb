require 'rails_helper'

describe 'navigate' do
  describe 'index' do
       it 'can be succesfully created' do
          visit posts_path
          expect(page.status_code).to eq(200)
        end
       it 'cannot be empty' do
          visit posts_path
           expect(page).to_not have_content(/posts/)
        end
  end
  describe 'creation ' do
  	  before do 
  	  	user= User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "hiten", last_name: "sai")
  	  	login_as(user, :scope => :user)
  	  	visit new_post_path
  	  end	
      it 'has a new form' do
   	       expect(page.status_code).to eq(200)
        end

       it 'can be created' do
   	       fill_in 'post[date]', with: Date.today
   	        fill_in 'post[rationale]', with: "some rationale"

   	        click_on "save"
   	        expect(page).to have_content("some rationale")
        end

        it 'will have a user associated it' do
        	fill_in 'post[date]', with: Date.today
   	        fill_in 'post[rationale]', with: "User associated"
   	        click_on "save"

   	        expect(User.last.posts.last.rationale).to eq("User associated")
        end
   end

end
