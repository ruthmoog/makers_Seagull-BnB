require 'pg'

class Listing
  attr_reader :id, :name, :description

  def initialize(id:, name:, description:)
    @id = id
    @name = name
    @description = description
    @reserved = false
  end

  # def reserved?
  #   @reserved
  # end

  def self.create(name:, description:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'seagull_test')
    else
      connection = PG.connect(dbname: 'd41h0b119sr4k1')
    end

    result = connection.exec("INSERT INTO listings (name, description, reserved) VALUES ('#{name}', '#{description}', false) RETURNING id, name, description")
    Listing.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'])
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'seagull_test')
    else
      connection = PG.connect(dbname: 'd41h0b119sr4k1')
    end

    result = connection.exec('SELECT * FROM listings')
    result.map do |listing| 
      Listing.new(id: listing['id'], name: listing['name'], description: listing['description'])
    end
  end

  # def reserve_switch
  #   reserved? ? @reserved = false : @reserved = true
  # end

end
