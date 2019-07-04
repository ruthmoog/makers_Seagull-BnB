# Requiring model because page to create listings doesn't exist.
# Will be refactored out once other page exists
require 'listing'
##

feature 'displaying all istings' do
  scenario 'visit display page to see all listings' do
    #Creating listings to test page works. Will be refactored out.
    $array = []
    listing1 = Listing.create(name: 'Seagull Cottage', description: '4 Stars')
    listing2 = Listing.create(name: 'Sea Shanty', description: '0 Stars')
    ##

    visit('/')
    click_link 'Listings'
    expect(current_path).to eq '/listings'
    expect(page).to have_content 'Seagull Cottage'
    expect(page).to have_content '0 Stars'
  end
end
