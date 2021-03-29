require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dude", last_name: "McTester", hourly_rate: 60)
@store1.employees.create(first_name: "Paul", last_name: "Atreides", hourly_rate: 60)

@store2.employees.create(first_name: "A", last_name: "Foo", hourly_rate: 60)
@store2.employees.create(first_name: "B", last_name: "Bar", hourly_rate: 60)
@store2.employees.create(first_name: "C", last_name: "Baz", hourly_rate: 60)
@store2.employees.create(first_name: "D", last_name: "Qux", hourly_rate: 60)
