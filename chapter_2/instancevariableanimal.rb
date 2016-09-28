class Dog
  def make_up_name
    @name = "Sandy"              #store a value in am instance variable.
  end

  def talk
    puts "#{@name} says Bark!"     #Access the instance variable.
  end
end

dog = Dog.new
dog.make_up_name
dog.talk

