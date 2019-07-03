require 'listing'

describe Listing do
  it 'can create a new listing' do
    listing = Listing.new(name: 'Test Name', description: 'Test description')

    expect(listing.name).to eq 'Test Name'
    expect(listing.description).to eq 'Test description'
    expect(listing.reserved?).to eq false
  end

  describe '.create' do
    it 'Can create a new instance of listing' do
      listing = Listing.create(name: 'Seagull Cottage', description: '4 Stars')

      expect(listing).to be_a Listing
      expect(listing.name).to eq('Seagull Cottage')
      expect(listing.description).to eq('4 Stars')
      expect($array[0]).to eq listing
    end
  end


end
