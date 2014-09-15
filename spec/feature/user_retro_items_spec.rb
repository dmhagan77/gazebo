require 'rails_helper'

feature 'User creating retro items' do
  scenario 'User creates a new retro item' do
    visit root_path

    expect(page).to have_title('We-Retro')

    # page should display retro items
    expect(page).to have_css('.retro-items')

    fill_in 'Retro Item', :with => 'Test'
    click_button 'Add Retro'

  end
end