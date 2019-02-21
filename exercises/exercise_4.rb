require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.new
store.name = 'Surrey'
store.annual_revenue = 224000
store.mens_apparel = false
store.womens_apparel = true
store.save

store = Store.new
store.name = 'Whistler'
store.annual_revenue = 1900000
store.mens_apparel = true
store.womens_apparel = false
store.save

store = Store.new
store.name = 'Yaletown'
store.annual_revenue = 430000
store.mens_apparel = true
store.womens_apparel = true
store.save

puts "----how many stores? #{Store.count} ----"

@mens_stores = Store.where(mens_apparel: true)
pp '----mens stores:----'
@mens_stores.each do |store|
  pp store.name
  pp store.annual_revenue
end

@womens_stores = Store.where(womens_apparel: true)
pp '----womens stores:----'
@womens_stores.each do |store|
  pp store.name
  pp store.annual_revenue
end
