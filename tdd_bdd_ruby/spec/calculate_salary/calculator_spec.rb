require_relative '../../lib/calculate_salary/ocupation.rb'
require_relative '../../lib/calculate_salary/employee.rb'
require_relative '../../lib/calculate_salary/calculator.rb'

require 'spec_helper'

describe Calculator do
  context 'when DEVELOPER' do

    it 'salary under 3.000 discount should be 10%' do
      calculator = Calculator.new
      employee = Employee.new 'Luiz', 1500, Ocupation::DEVELOPER

      salary = calculator.calculate employee
      expected_salary = 1500 * 0.9

      expect(salary).to eq(expected_salary)
    end

    it 'salary over 3.000 discount should be 20%' do
      calculator = Calculator.new
      employee = Employee.new 'Luiz', 4000, Ocupation::DEVELOPER

      salary = calculator.calculate employee
      expected_salary = 4000 * 0.8

      expect(salary).to eq(expected_salary)
    end

  end

  context 'when DBA' do

    it 'salary under 1.500 discount should be 15%' do
      calculator = Calculator.new
      employee = Employee.new 'Luiz', 500, Ocupation::DBA

      salary = calculator.calculate employee
      expected_salary = 500 * 0.85

      expect(salary).to eq(expected_salary)
    end

  end
end