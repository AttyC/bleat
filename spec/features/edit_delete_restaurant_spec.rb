require 'rails_helper'

RSpec.describe "Edit Restaurant ", :type => :feature do
  feature 'User can successfull edit restaurant ' do
    scenario 'when user owns restaurant' do
      sign_up
      create_restaurant('Fancy House', 'Delicious')
      click_on 'Remove'
      expect(page).not_to have_content('Fancy House')
    end
  end
end
