class Listing
  attr_reader :name, :description

def initialize(name, description)
  @name = name
  @description = description
  @reserved = false
end

def reserved?
  @reserved
end





end
