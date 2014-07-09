class AttribeHolder3
	attr_accessor :name, :first_name
end

ah = AttribeHolder3.new
ah.name = "AH Test"
ah.first_name = "AH First"
p ah.name, ah.first_name