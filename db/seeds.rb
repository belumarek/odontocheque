# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting all the db"
Product.destroy_all
Brand.destroy_all

puts 'start seed'

sensodyne = Brand.create!(name: 'sensodyne')
corega = Brand.create!(name: 'corega')
parodontax = Brand.create!(name: 'parodontax')

PRODUCT_SENSODYNE = ['true white', 'repara y protege', 'rapido alivio', 'limpieza profunda', 'cepillo multiproteccion', 'cepillo complete', 'cepillo rapido alivio', 'cepillo true white', 'enjuague cool mint', 'enjuague extra fresh', 'proesmalte blanqueador 113 g', 'proesmalte niños']

PRODUCT_SENSODYNE.each do |product|
  Product.create!(
    name: product,
    brand_id: sensodyne.id)
end

PRODUCT_COREGA = ['ultra corega crema sin sabor', 'ultra corega crema sabor menta', 'corega tabs 3 minutos', 'corega tabs blanqueador']

  PRODUCT_COREGA.each do |product|
  Product.create!(
      name: product,
      brand_id: corega.id)
  end

PRODUCT_PARODONTAX = ['parodontax complete protection extra fresh', 'parodontax fluor', 'parodontax blanqueador', 'parodontax cepillo']

PRODUCT_PARODONTAX.each do |product|
    Product.create!(
      name: product,
      brand_id: parodontax.id
    )
  end
puts 'end seed'