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


end
