class Person

  def greet_by_name(name)
    "Hello, #{name}!"
  end
end

#....when you leave the arguments off, the superclass method will automatically be called with the same arguments that were passed to the subclass method.
class Friend < Person

  def greet_by_name(name) #Friend's greet_by_name method has to be called with a "name" argument....
    basic_greeting = super   #..so the "name" argument will be forwarded on to Person's greet_by_nme methodas well.
    "#{basic_greeting} Glad to see you!"
  end

end

puts Friend.new.greet_by_name("Bert")


