# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dan = Customer.create(name: "Daniel Chang", referring_customer_id: 0)
emily = Customer.create(name: "Emily Xie", referring_customer_id: 0)
greg = Customer.create(name: "Greg Eng", referring_customer_id: 0)
ivan = Customer.create(name: "Ivan Brennan", referring_customer_id: 2)
ian = Customer.create(name: "Ian Miller", referring_customer_id: 1)
avi = Customer.create(name: "Avi Flombaum", referring_customer_id: 3)
