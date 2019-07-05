require 'listing'
require 'database_helper'

describe Listing do

  describe '.create' do
    it 'Can create a new instance of listing' do
      listing = Listing.create(name: "Seagull Cottage", description: "4 Stars" )

      persisted_data = persisted_data(id: listing.id)

      expect(listing).to be_a Listing
      expect(listing.name).to eq('Seagull Cottage')
      expect(listing.description).to eq('4 Stars')
    end
  end

  describe '.all' do
    it 'Can return all instances of listing' do

      listing = Listing.create(name: "Seagull Cottage", description: "4 Stars")
      Listing.create(name: "Sea Shanty", description: "0 Stars")

      connection = PG.connect(dbname: 'seagull_test')

      connection.exec("INSERT INTO listings (name, description, reserved) VALUES ('Seagull Cottage', '4 Stars', false)")
      connection.exec("INSERT INTO listings (name, description, reserved) VALUES ('Sea Shanty', '0 Stars', false)")

      listings = Listing.all

      expect(listings.first.name).to include('Seagull Cottage')
      expect(listings.first.id).to eq listing.id
      expect(listings.first.description).to eq('4 Stars')
    end
  end

  describe '#reserve_switch' do
    xit'Can switch the state of @reserved' do
      listing = Listing.new(name: 'Seagull Cottage', description: '4 Stars')
      expect(listing.reserved?).to eq(false)
      listing.reserve_switch
      expect(listing.reserved?).to eq(true)
    end
  end

end
