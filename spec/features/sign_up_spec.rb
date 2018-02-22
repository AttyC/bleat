require 'rails_helper'
RSpec.describe "Sign Up", :type => :feature do
  feature 'Sign Up' do
    scenario "Check able to sign up" do
      sign_up
      expect(page).to have_content('Welcome! You have signed up successfully')
    end
  end
end
