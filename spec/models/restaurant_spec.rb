require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context 'initially' do
    it 'has a name' do
      @user = User.create(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
      restaurant = Restaurant.create(name: "Testaurant", description: "Tasty tests", owner_id: @user.id)
      expect(Restaurant.find_by(name: "Testaurant").name).to eq restaurant.name
    end

    it 'has a description' do
      @user = User.create(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
      restaurant = Restaurant.create(name: "Testaurant", description: "Tasty tests", owner_id: @user.id)
      expect(Restaurant.find_by(description: "Tasty tests").description).to eq restaurant.description
    end
  end
end
