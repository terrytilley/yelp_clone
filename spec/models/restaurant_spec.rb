require 'spec_helper'

describe Restaurant, type: :model do
  it 'is not valid with a name of less than three characters' do
    restaurant = Restaurant.new(name: "kf")
    expect(restaurant).to(have(1).error_on(:name))
    expect(restaurant).not_to(be_valid)
  end

  it 'is not valid unless is has a unique name' do
    restaurant_two = Restaurant.create(name: "Moe's Tavern")
    restaurant = Restaurant.create(name: "Moe's Tavern")
    restaurant_two.save(:validate => false)
    expect(restaurant).to(have(1).error_on(:name))
  end

end
