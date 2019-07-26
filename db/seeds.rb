# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create([
  { name: 'Bolsa cierre hermetico', size: '0.5x0.5', packing: '10', price: 1000 },
  { name: 'Bolsa cierre hermetico', size: '1.5x1.5', packing: '10', price: 1500 },
  { name: 'Bolsa cierre hermetico', size: '2x2', packing: '10', price: 2000 },
  { name: 'Bolsa cierre hermetico', size: '2x3', packing: '10', price: 2500 },
  { name: 'Bolsa cierre hermetico', size: '3x3', packing: '10', price: 3000 },
  { name: 'Bolsa cierre hermetico', size: '3x5', packing: '10', price: 3500 },
  { name: 'Bolsa cierre hermetico', size: '4x5', packing: '10', price: 4000 },
  { name: 'Bolsa cierre hermetico', size: '4x8', packing: '10', price: 4500 },
  { name: 'Bolsa cierre hermetico', size: '5.5x5', packing: '10', price: 5000 },
  { name: 'Bolsa cierre hermetico', size: '5.5x7', packing: '10', price: 5500 },
  { name: 'Bolsa cierre hermetico', size: '6x6', packing: '10', price: 6000 },
  { name: 'Bolsa cierre hermetico', size: '6x9', packing: '10', price: 6500 },
  { name: 'Bolsa cierre hermetico', size: '7x7', packing: '10', price: 7000 },
  { name: 'Bolsa cierre hermetico', size: '8x8', packing: '10', price: 7500 }
])