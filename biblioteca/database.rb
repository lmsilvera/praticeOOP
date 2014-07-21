class Database < ParentClass
    @@database
    def initialize(args)
        @@database = SQLite3::Database.open "biblioteca.db"
        @@database.execute "CREATE TABLE IF NOT EXISTS socio (dni ineter PRIMARY KEY, direccion text, nombre text, apellido text)"
        @@database.execute "CREATE TABLE IF NOT EXISTS libro (codigo int PRIMARY KEY, titulo text, editorial text, anio integer)"
    end 
end