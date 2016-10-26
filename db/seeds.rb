# This file should contain all the record creation needed to seed the database with its default book_values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(username: "sam", first_name: "Sam", last_name: "Younger", email: "sam@sam.com", password: "password", password_confirmation: "password")

u2 = User.create!(username: "cora", first_name: "Cora", last_name: "Barrett", email: "cora@cora.com", password: "password", password_confirmation: "password" )

u3 = User.create!(username: "alex", first_name: "Alex", last_name: "Chin", email: "alex@alex.com", password: "password", password_confirmation: "password")

u4 = User.create!(username: "kenny", first_name: "Kenny", last_name: "McCormick", email: "kenny@kenny.com", password: "password", password_confirmation: "password")

t1 = u1.trades.create!(epic: "JPM", exchange: "NYSE", number_of_shares: "100", price: "56", book_value: "5600", trade_type: "buy")
t2 = u2.trades.create!(epic: "MSFC", exchange: "NASDAQ", number_of_shares: "50", price: "84", book_value: "4200", trade_type: "buy")
t3 = u3.trades.create!(epic: "INTC", exchange: "NASDAQ", number_of_shares: "2000", price: "34", book_value: "68000", trade_type: "sell")
t4 = u3.trades.create!(epic: "C", exchange: "NYSE", number_of_shares: "150", price: "89", book_value: "13350", trade_type: "buy")
t5 = u4.trades.create!(epic: "GOOG", exchange: "NASDAQ", number_of_shares: "150000", price: "87", book_value: "13050000", trade_type: "sell")
