class Employee

  attr_reader :name, :salary

  def name=(name)  #we need to create attribute writer methods manually, so we can validate the data. We can create reader methods automatically, though.
    if name == ""
      raise "Name can't be blank!" #Report an error if the name is blank
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!" #Report an error if the salary is negative.
    end
    @salary = salary #Store the salary in an instance variable.
  end

  def print_pay_stub
    puts "Name: #{@name}" #Print the employee name
    pay_for_period = (salary / 365.0) * 14   #Calculate a 14-day portion of the employee's salary.
    puts "Pay This Period: $#{pay_for_period}" #Print the amount paid
  end
end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000

employee = Employee.new
employee.name = "Jane Doe"
employee.salary = 50000

employee.print_pay_stub
#kara = Employee.new
#kara.name = ""

#ben = Employee.new
#ben.salary = -246

amy.print_pay_stub #Close, but where are the cents?





