require 'rails_helper'

describe 'User can search for an author' do
  it 'to search for an author' do
    visit '/'

fill_in(:author, :with => 'shakespeare')
    expect(page).to have_css('.search-containter')
    within '.search-containter' do
      expect(page).to have_css('.search')
        click_button 'Get Poems'
        expect(current_path).to eq('/search')
    end
  end
end
