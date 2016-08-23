require 'rails_helper'

feature "Users can sign in and out" do

  # before(:each) { visit '/' }

  context 'users not signed in and on the homepage' do
    it "should see a 'sign in' and 'sign' up link." do
      visit '/'
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    it "should not see 'sign out' link" do
      visit '/'
      expect(page).not_to have_link('Sign out')
    end
  end

  context "users signed in on the homepage" do
    before do
      visit '/'
      click_link 'sign up'
      fill_in 'email', with: 'mali@mali.com'
      fill_in 'password', with: 'secret'
      fill_in 'password confirmation', with: 'secret'
      click_button 'Sign up'
    end

    it "should see 'sign out' link" do
      visit '/'
      expect(page).to have_link 'Sign out'
    end

    it "should not see a 'sign in' and 'sign up' link" do
      visit '/'
      expect(page).not_to have_link 'Sign in'
      expect(page).not_to have_link 'Sign up'
    end
  end
end
