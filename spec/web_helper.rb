def user_sign_up
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: 'mali@mali.com'
  fill_in 'Password', with: 'secret'
  fill_in 'Password confirmation', with: 'secret'
  click_button 'Sign up'
end

def user_sign_up_2
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: 'terry@terry.com'
  fill_in 'Password', with: 'qwerty'
  fill_in 'Password confirmation', with: 'qwerty'
  click_button 'Sign up'
end

def user_create_restaurant
  visit '/restaurants'
  click_link 'Add a restaurant'
  fill_in 'Name', with: 'KFC'
  fill_in 'Description', with: 'Terrible, never go here'
  click_button 'Create Restaurant'
end

def user_sign_out
  visit '/'
  click_link 'Sign out'
end
