require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
s1 = Store.create(name: 'Burnaby', annual_revenue: '300000', mens_apparel: true, womens_apparel: true)
s2 = Store.create(name: 'Richmond', annual_revenue: '1260000', mens_apparel: false, womens_apparel: true)
s3 = Store.create(name: 'Gastown', annual_revenue: '190000', mens_apparel: true, womens_apparel: false)
s4 = Store.create(name: 'Surrey', annual_revenue: '224000', mens_apparel: false, womens_apparel: true)
s5 = Store.create(name: 'Whistler', annual_revenue: '1900000', mens_apparel: true, womens_apparel: false)
s6 = Store.create(name: 'Yaletown', annual_revenue: '430000', mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
    puts "#{store.name}, #{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ? ", 1000000)
@womens_stores.each do |store|
    puts "women's store:
    #{store.name}"
end

