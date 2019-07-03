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

  describe '.all' do
    it 'Can return all instances of listing' do
      $array = []
      listing1 = Listing.create(name: 'Seagull Cottage', description: '4 Stars')
      listing2 = Listing.create(name: 'Sea Shanty', description: '0 Stars')

      listings = Listing.all

      expect(listings.length).to eq 2
      expect(listings[0]).to eq listing1
      expect(listings[1].name).to eq 'Sea Shanty'
    end
  end

  describe '#reserve_switch' do
    it'Can switch the state of @reserved' do
      listing = Listing.new(name: 'Seagull Cottage', description: '4 Stars')
      expect(listing.reserved?).to eq(false)
      listing.reserve_switch
      expect(listing.reserved?).to eq(true)
    end
  end


end
