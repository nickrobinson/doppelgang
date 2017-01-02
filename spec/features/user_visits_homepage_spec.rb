require 'rails_helper'

feature 'User Signs In' do
  scenario 'they see a sign in button on the homepage' do
    visit '/'

    expect(page).to have_link 'Sign in'
  end

  scenario 'they see a logout link after signing in' do
    login_as(build(:user), :scope => :user)
    visit '/'

    expect(page).to have_link 'Sign out'
  end

  scenario 'they see their image on the homepage' do
    login_as(build(:user), :scope => :user)
    visit '/'

    expect(page).to have_css("img[src*='graph.facebook.com']")
  end
end
