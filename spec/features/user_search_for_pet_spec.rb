require 'rails_helper'

describe 'user visits the home page' do
  it 'can click on a search button to go to a search pet page' do
    visit root_path

    click_button 'Search Your Pet'

    expect(current_path).to eq('/pet_search')

    fill_in :location, with: 80111
    select "Dog", :from => "animal"
    click_on "Submit"

    expect(page).to have_field("location")
    expect(page).to have_field("animal")
    expect(page).to have_field("age")
    expect(page).to have_field("size")

    expect(page).to have_css(".pet")

    within(first(".pet")) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.age')
      expect(page).to have_css('.size')
      expect(page).to have_css('.city-state')
    end
  end
end