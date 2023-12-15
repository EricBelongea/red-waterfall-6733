require "rails_helper"

RSpec.describe "Search Index" do
  it " Will display the characters of said nation" do
    visit root_path

    select("Fire Nation", from: "nation")
    expect(page).to have_button("Search For Members")
    click_button("Search For Members")

    expect(current_path).to eq(search_path)

    expect(page).to have_content("There are 97 characters for the fire+nation")
  end
end