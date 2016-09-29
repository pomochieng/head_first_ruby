class Dog
  attr_reader :name, :age         #Setting up "name" and "age" attribute reader methods

  def name=(value)                #Attribute writer method for "@name"
    if value == ""
      raise "Name can't be blank!"  #Data validation ---raise----
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)            # Instance method (destination)
    puts "#{@name} runs to the #{destination}."    # Using an instance variable @name
  end

  def talk
    puts "#{@name} says Bark!"                     # Using an instance variable @name
  end

  def report_age
    puts "#{@name} is #{@age} years old."          # Using an instance variable @name & @age
  end
end


dog = Dog.new         #Creating a new Dog instance
dog.name = "Daisy"    #Initializing attributes
puts dog.name


dog.age = 3
puts dog.age

dog.report_age
dog.talk              #Calling instance methods
dog.move("bed")
