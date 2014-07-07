class Box
	def initialize(w, h)
		@width, @height = w, h
	end

	def getArea
		@width * @height
	end
end

box = Box.new(10, 30)
a = box.getArea
p "Area of box is: #{a}"