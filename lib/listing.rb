require 'pg'
$array = []

class Listing
  attr_reader :name, :description

def initialize(name:, description:)
  @name = name
  @description = description
  @reserved = false
end

def reserved?
  @reserved
end

def self.create(name:, description:)
  listing = Listing.new(name: name, description: description)
  $array.push(listing)
  listing
end

def self.all
  connection = PG.connect(dbname: 'seagull_test')
  result = connection.exec('SELECT * FROM listings')
  result.map { |listing| listing['name'] }
end

def reserve_switch
  reserved? ? @reserved = false : @reserved = true
end


end
