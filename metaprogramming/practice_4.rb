####### Structures #########
Person = Struct.new "Person", :first_name, :last_name
p1 = Person.new
p1.last_name = "Doe"
p1.first_name = "John"
p1

p2 = Person.new("Jane", "Doe")
p p2