require 'pg'

def kakaw
  p ""
  p "                       :~~--__                __--~~:."
  p "                     ,:;'~'-,__~~--..,---..--~~__,-`~`::."
  p "                   ,:;'        ''-,_ (. .)_,-``        `::."
  p "                 ,;'                | `|)/                `:."
  p "                '                    `--'                    `"
  p "  __._                       _.._                 _._"
  p "-~~    ~~--..__.._-~~~--..--~~    ~~--.__.---...-'~   ~~---...-.__seagull dynamics"
end

def setup_test_database
  p "Reset test database..."

  connection = PG.connect(dbname: 'seagull_test')

  connection.exec("TRUNCATE listings;")
end
