class Foo

  # attr_writer :string
  # attr_reader :string
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def string=(val)
   @string = val
  end

  def string
    @string
  end
end

class Bar
  def get
    foo = Foo.new("str")
    foo.string
  end
end

foo = Foo.new("an_argument")

foo.string = "argument changed"

puts foo.inspect