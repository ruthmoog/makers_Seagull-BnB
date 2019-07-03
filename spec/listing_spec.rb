require 'listing'

describe Listing do
  it 'can create a new listing' do
    listing = Listing.new('Test Name', 'Test description')

    expect(listing.name).to eq 'Test Name'
    expect(listing.description).to eq 'Test description'
    expect(listing.reserved?).to eq false
  end
end
