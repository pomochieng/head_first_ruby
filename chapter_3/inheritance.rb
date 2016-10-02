class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

#With our Dog, Bird, Cat classes rewritten as subclasses of Animal, 
#they don't need any methods or attributes of their own - 
#They inherit everything from the superclass!


class Dog < Animal
end

class Bird < Animal
  def talk            #Overides the inherited method.
     puts "#{@name} says Chirp! Chirp!"
  end
end

class Cat < Animal
  def talk             #Overides the inherited method.
    puts "#{@name} says Meow!"
  end
end

whiskers = Cat.new
whiskers.name = "Whiskers"

fido = Dog.new
fido.name = "Fido"

polly = Bird.new
polly.name = "Polly"
polly.age = 2
polly.report_age

fido.move("yard")

whiskers.talk
polly.talk

