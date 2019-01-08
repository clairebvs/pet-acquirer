require 'rails_helper'

describe 'user visits the home page' do
  it 'can click on a search button to go to a search pet page' do
    visit root_path

    click_button 'Search Your Pet'

    expect(current_path).to eq('pet_search_path')
    expect(page).to have_field("Animal")
    expect(page).to have_field("Breed")
    expect(page).to have_field("Age")
  end
end
