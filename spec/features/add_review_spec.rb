require 'rails_helper'

RSpec.describe "Add review", :type => :feature do
  feature 'Create Review' do
    scenario 'create review for a restaurant' do
      visit '/restaurants'
      click_on 'New restaurant'
      fill_in 'restaurant[name]', with: 'Testaurant'
      fill_in 'restaurant[description]', with: 'Delicious'
      click_button 'Create Restaurant'
      click_on 'Add Review'
      fill_in 'review[rating]', with: '2'
      fill_in 'review[comment]', with: 'really good!!'
      click_button 'Create Review'
      within('div#reviews') {expect(page).to have_content('2')}
      within('div#reviews') {expect(page).to have_content('really good!!')}
    end
  end
end
