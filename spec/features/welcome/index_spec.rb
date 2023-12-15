require "rails_helper"

RSpec.describe '#welcome index' do
  it "Has a search form and allows for you to select a nation" do
    visit root_path

    select("Fire Nation", from: "nation")
    expect(page).to have_button("Search For Members")
    click_button("Search For Members")

    expect(current_path).to eq(search_path)
  end
end