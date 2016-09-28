class Dog
  def make_up_name
    @name = "Sandy"              #store a value in am instance variable.
  end

  def talk
    puts "#{@name} says Bark!"     #Access the instance variable.
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def make_up_age
    @age = 5
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end

end

dog = Dog.new
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age

