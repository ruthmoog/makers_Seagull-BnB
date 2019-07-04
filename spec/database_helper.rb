require 'pg'

def persisted_data(id:)
  connection = PG.connect(dbname: 'seagull_test')
  result = connection.query("SELECT * FROM listings WHERE id = #{id};")
  result.first
end