require 'rails_helper'
RSpec.feature 'Users', type: :feature do
  context 'create new user' do
    scenario 'should be successful' do
      visit new_user_registration_path
      within('form') do
        fill_in 'Name', with: 'john'
        fill_in 'Username', with: 'john'
        fill_in 'Email', with: 'john@gmail.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
      end
      click_button 'Sign up'
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end
  end
  scenario 'Correct user creation' do
    visit new_user_registration_path
    fill_in 'Name', with: 'masha'
    fill_in 'Username', with: 'masha'
    fill_in 'Email', with: 'masha@example.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_on 'Sign up'
    expect(current_path).to eq(root_path)
  end
end
