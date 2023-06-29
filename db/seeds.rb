# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create([
  {
    name: "Quite confort",
    brand: "Bose",
    price: '€243',
    description: 'Wireless bluetooth headphones'
  },
  {
    name: "Quite confort 2",
    brand: "Tesla",
    price: '€500',
    description: 'Wireless bluetooth headphones test 2'
  }
])
