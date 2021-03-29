require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
puts Store.all.count # 2

store4 = Store.new
store4.name = 'Surrey'
store4.annual_revenue = 224000
store4.womens_apparel = true
store4.save

store5 = Store.new
store5.name = 'Whistler'
store5.annual_revenue = 1900000
store5.mens_apparel = true
store5.save

store6 = Store.new
store6.name = 'Yaletown'
store6.annual_revenue = 430000
store6.mens_apparel = true
store6.womens_apparel = true
store6.save

puts Store.all.count # 5

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

@underperforming_womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..1000000)
@underperforming_womens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end
