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
  validates :first_name, length: { minimum: 3 }
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: { strict: true }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: 'cannot create store because this value must be present and an integer' }
end

pp '> '
@store_name = gets.chomp

@new_store = Store.create(name: @store_name)
@new_store.save

@new_store.errors.each do |attr, message|
  pp "#{attr}: #{message}"
end
