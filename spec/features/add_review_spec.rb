require 'rails_helper'

RSpec.describe "Add review", :type => :feature do
  feature 'Create Review' do
    scenario 'create one review for a restaurant' do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      within('div#reviews') {expect(page).to have_content('2')}
      within('div#reviews') {expect(page).to have_content('really good!!')}
    end
  end
end
