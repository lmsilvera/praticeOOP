class AttributeHolder
  def name=(n)
    @name = n
  end

  def name
    @name
  end
end

ah = AttributeHolder.new
ah.name = "AH test"
p ah.name

class AttributeHolder2
  def name=(n)
    @name = n
  end

  def name
    @name
  end

  def first_name=(n)
    @first_name = n
  end

  def first_name
    @first_name
  end
end

ah2 = AttributeHolder2.new
ah2.name = "AH test 2"
ah2.first_name = "AH First 2"
p ah2.name, ah2.first_name