word = "word"
class << word
	def hello
		"hello " + self
	end
end
p word.hello