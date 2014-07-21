# cadena = "Hola mundo"
# p cadena.index("u")
# p cadena.length


# mensaje = "length"
# p cadena.send mensaje

class UnaClase
	def method_class
		num = 3
		p "Haga algo antes"
		yield num
		p "fin"
	end
end

a = UnaClase.new
a.method_class { |x| p "haciendo algo con #{x}" }