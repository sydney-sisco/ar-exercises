require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  has_one :store

  validates :hourly_rate, :inclusion => {:in => [40..200]}
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_some_apparel

  def must_carry_some_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end

end

print "enter a new store name: "
store_name = gets.chomp

new_store = Store.new
new_store.name = store_name
# new_store.annual_revenue = 0
# new_store.mens_apparel = true

if new_store.valid? then
  new_store.save
else
  puts new_store.errors.full_messages
end
