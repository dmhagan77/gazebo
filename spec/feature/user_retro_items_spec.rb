require "rails_helper"

feature "User creating retro items" do
  scenario "User creates a new retro item" do
    visit root_path

    expect(page).to have_text("Widget was successfully created.")

    fill_in "Name", :with => "My Widget"
    click_button "Create Widget"

  end
end