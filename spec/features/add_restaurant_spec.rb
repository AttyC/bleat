require 'rails_helper'

RSpec.describe "Add restaurant", :type => :feature do
  feature 'Create restaurant' do
    scenario "displays restaurant in list after creating it" do
      sign_up
      visit '/restaurants'
      click_on 'New restaurant'
      fill_in 'restaurant[name]', with: 'Testaurant'
      fill_in 'restaurant[description]', with: 'Delicious'
      click_button 'Create Restaurant'
      expect(page).to have_content('Testaurant')
      expect(page).to have_content('Delicious')
    end
  end
end
