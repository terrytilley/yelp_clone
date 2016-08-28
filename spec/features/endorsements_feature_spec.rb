require 'rails_helper'

feature 'endorsing reviews' do
  before do
    user_sign_up
    user_create_restaurant
    user_create_review("This is a review", "4")
  end

  # scenario 'a user can endorse a review, which updates the review endorsement count' do
  #   visit '/restaurants'
  #   click_link 'Endorse Review'
  #   expect(page).to have_content('1 endorsement')
  # end

  it 'a user can endorse a review, which increments the endorsement count', js: true do
    visit '/restaurants'
    click_link 'Endorse'
    expect(page).to have_content("1 endorsement")
  end

end
