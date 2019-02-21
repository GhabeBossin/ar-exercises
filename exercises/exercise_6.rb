require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Carl", last_name: "George", hourly_rate: 80)
@store1.employees.create(first_name: "Ghabe", last_name: "Bossin", hourly_rate: 90)

@store2.employees.create(first_name: "Elizabeth", last_name: "Brown", hourly_rate: 60)
@store2.employees.create(first_name: "Kava", last_name: "BestDog", hourly_rate: 80)
@store2.employees.create(first_name: "Fergus", last_name: "Grumpigus", hourly_rate: 90)

# @store3 = Store.find_by(id: 3)
# @store4 = Store.find_by(id: 4)
# @store5 = Store.find_by(id: 5)

# @store3.employees.create(first_name: "Letty", last_name: "Spagetti", hourly_rate: 60)
# @store3.employees.create(first_name: "Betty", last_name: "Boop", hourly_rate: 80)
# @store3.employees.create(first_name: "Poppy", last_name: "Flower", hourly_rate: 90)

# @store4.employees.create(first_name: "Bob", last_name: "Just Bob", hourly_rate: 60)
# @store4.employees.create(first_name: "Sleepy", last_name: "Cat", hourly_rate: 80)
# @store4.employees.create(first_name: "Banana", last_name: "InPajamas", hourly_rate: 90)

# @store5.employees.create(first_name: "Shirley", last_name: "Temple", hourly_rate: 60)
# @store5.employees.create(first_name: "Hue", last_name: "Shade", hourly_rate: 80)
# @store5.employees.create(first_name: "Mr.", last_name: "T", hourly_rate: 90)

# pp Employee.where(store_id: 1)