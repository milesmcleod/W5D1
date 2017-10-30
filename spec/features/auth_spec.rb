require 'spec_helper'
require 'rails_helper'

feature 'the signup process' do
  scenario 'has a new user page' do
    visit new_user_url
    expect(page).to have_content('Sign Up')
  end

  feature 'signing up a user' do
    before(:each) do
      visit new_user_url
      fill_in 'username', with: 'testing_username'
      fill_in 'password', with: 'biscuits'
      click_on 'Create user'
    end

    scenario 'redirects to goal index page after signup' do
      expect(page).to have_content 'Goal Index Page'
    end


    scenario 'shows username on the homepage after signup' do
      expect(page).to have_content('testing_username')
    end

  end
end

feature 'logging in' do
  subject!(:user) do
    FactoryBot.create(:user)
  end

  before(:each) do
    visit new_session_url
    fill_in 'username', with: 'Ron Burgundy'
    fill_in 'password', with: 'password'
    click_on 'Log In'
  end

  scenario 'shows username on the homepage after login' do
    expect(page).to have_content('Ron Burgundy')
  end

  scenario 'redirects to goal index page after signup' do
    expect(page).to have_content 'Goal Index Page'
  end
end

feature 'logging out' do
  subject!(:user) do
    FactoryBot.create(:user)
  end
  scenario 'begins with a logged out state' do
    visit ('/goals')
    expect(page).to have_content('Sign In')
  end

  scenario 'doesn\'t show username on the homepage after logout' do
    visit new_session_url
    fill_in 'username', with: 'Ron Burgundy'
    fill_in 'password', with: 'password'
    click_on 'Log In'
    click_on 'Sign Out'
    expect(page).not_to have_content('Ron Burgundy')
  end

end
