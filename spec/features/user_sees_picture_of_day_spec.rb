require 'rails_helper'

describe 'user visits the home page' do
  it 'can see a random picture of pet' do
    visit root_path

    expect(page).to have_content("Where Pets Adopt People Like You")
    expect(page).to have_css(".pic-day")
  end
end
