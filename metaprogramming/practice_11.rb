fred = Module.new do
	def meth1
		"hello"
	end
	def meth2
		"bye"
	end
end
a = "my string"
p a.extend(fred)
p a.meth1
p a.meth2
p a