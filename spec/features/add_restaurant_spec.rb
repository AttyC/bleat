require 'rails_helper'

RSpec.describe "Add restaurant", :type => :feature do
  feature 'Create restaurant' do
    scenario "displays restaurant in list after creating it" do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      expect(page).to have_content('Testaurant')
      expect(page).to have_content('Delicious')
    end
  end
end
