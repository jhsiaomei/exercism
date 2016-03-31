class HelloWorld
  def self.hello(*name)
    if name[0]
      "Hello, #{name[0]}!"
    else
      "Hello, World!"
    end
  end
end