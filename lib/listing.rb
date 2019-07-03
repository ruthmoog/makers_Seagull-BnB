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
  $array
end


end
