require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Welcome to Poetry and Emotion')
    expect(page).to have_selector('input')
  end

  it 'to search for an author' do
    visit '/'

    within '.search-containter' do
      within '.search' do
        fill_in 'author', with: 'shakespeare'
        click_button 'Get Poems'
        expect(current_path).to eq('/search')
      end
    end
  end
end
