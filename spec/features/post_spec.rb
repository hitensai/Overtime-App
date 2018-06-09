require 'rails_helper'

describe 'navigate' do
  describe 'index' do
       it 'can be succesfully created' do
          visit posts_path
          expect(page.status_code).to eq(200)
        end
       it 'cannot be empty' do
          visit posts_path
           expect(page).to have_content(/posts/)
        end
  end
  describe 'creation ' do
  	  before do 
  	  	visit new_post_path
  	  end	
      it 'has a new form' do
   	       expect(page.status_code).to eq(200)
        end

       it 'can be created' do
   	       fill_in 'post[date]', with: Date.today
   	        fill_in 'post[rationale]', with: "some rationale"

   	        click_on "save"
   	        expect(page).to have_content(/some rationale/)
        end
   end

end
