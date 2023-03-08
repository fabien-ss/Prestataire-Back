require 'pg'

def enterBdd()
  c = PG::Connection.new(
    host: "localhost",
    port: 5432,
    dbname: "bddspaciale",
    user: "fabien",
    password: "fabien"
  )
  return c
end

