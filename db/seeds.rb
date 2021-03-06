# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coin = 230000
quoin = 240000
total = 700000
profit = 1000
profit_rate = 0.1
(1..30).each { |i|
  i += 1
  total += 5000
  coin += 1000
  quoin += 2000
  profit += 75
  profit_rate += 0.01
  Profit.create(created_on: "2018-11-#{i}", total_balance: "#{total}", profit: "#{profit}", profit_rate: "#{profit_rate}")
  ExchangeInformation.create(created_on: "2018-11-#{i}", name: "Coincheck", jpy_balance: "#{coin}")
  ExchangeInformation.create(created_on: "2018-11-#{i}", name: "Quoinex", jpy_balance: "#{quoin}")
}
