require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "total revenue: #{Store.sum(:annual_revenue)}"
puts "average revenue: #{Store.average(:annual_revenue)}"
puts "number of stores with >$1M sales: #{Store.where(annual_revenue: 1000000..Float::INFINITY).size}"
