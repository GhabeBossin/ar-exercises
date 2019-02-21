require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store
end

store = Store.new
store.name = 'Burnaby'
store.annual_revenue = 300000
store.mens_apparel = true
store.womens_apparel = true
store.save

store = Store.new
store.name = 'Richmond'
store.annual_revenue = 1260000
store.mens_apparel = false
store.womens_apparel = true
store.save

store = Store.new
store.name = 'Gastown'
store.annual_revenue = 190000
store.mens_apparel = true
store.womens_apparel = false
store.save

puts stores = Store.count

