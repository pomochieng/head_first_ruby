#Use the "super" keyword within a method, 
#it makes a call to a method of the same name on the superclass
class Person
  def greeting
    puts "Hello!"
  end

end

class Friend < Person

  def greeting
    super                   #"super" makes a call here
    puts "Glad to see you!"
  end

end

class Pal < Person

  def greeting
    basic_greeting = super
    "#{basic_greeting} Glad to see you!"
  end

end


Friend.new.greeting
puts Pal.new.greeting
