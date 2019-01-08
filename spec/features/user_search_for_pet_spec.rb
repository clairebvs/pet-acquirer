require 'rails_helper'

describe 'user visits the home page' do
  it 'can click on a search button to go to a search pet page' do
    visit root_path

    click_button 'Search Your Pet'

    expect(current_path).to eq('/pet_search')
    expect(page).to have_field("location")
    expect(page).to have_field("animal")
    expect(page).to have_field("age")
    expect(page).to have_field("size")
  end
end
