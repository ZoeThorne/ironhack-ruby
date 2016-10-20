module SalariedPay
  def salary_for(yearly_salary)
    yearly_salary / 52.0.round(2)
  end
end

class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      '%.2f' %(@hourly_rate * @hours_worked)
    end

end

class SalariedEmployee < Employee
  include SalariedPay

	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		salary_for(yearly_salary)
	end
end

class MultiPaymentEmployee < Employee
  include SalariedPay
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
    base_salary = salary_for(yearly_salary)
		overtime = @hours_worked > 40? (@hours_worked - 40) * @hourly_rate : 0
		'%.2f' %(base_salary + overtime)
	end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	total_salary = '%.2f' %((@employees.reduce(0) {|sum, x| sum + x.calculate_salary.to_i})*1.18)
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
  end

   def notify_employee(employee)
      puts "#{employee.name}, you have been paid #{employee.calculate_salary} this week."
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
zoe = HourlyEmployee.new('Zoe', 'zathorne@gmail.com', 15, 60)
max = HourlyEmployee.new('Max', 'm.gidrs@gmx.net', 15, 60)

puts josh.calculate_salary
puts nizar.calculate_salary
puts ted.calculate_salary
puts zoe.calculate_salary
puts max.calculate_salary

employees = [josh, nizar, ted, zoe, max]
payroll = Payroll.new(employees)
puts payroll.pay_employees
# josh => 1750
# nizar => 19230
# etc
# etc

payroll.notify_employee(josh)