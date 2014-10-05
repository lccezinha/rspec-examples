class Calculator

  def calculate(employee)
    if employee.ocupation == Ocupation::DEVELOPER
      return employee.salary * 0.8 if employee.salary > 3000
      return employee.salary * 0.9
    else
      return employee.salary * 0.85
    end
  end

end