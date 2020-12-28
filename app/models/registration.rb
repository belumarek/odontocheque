class Registration < ApplicationRecord
  attr :province
  attr :number
  validate :number, uniqueness: { scope: :kind }
  validate :registration_uniqueness


PROVINCES = %w[Buenos Aires CABA Catamarca Chaco Chubut Córdoba  Corrientes Entre Ríos  Formosa Jujuy La Pampa La Rioja Mendoza: Mendoza Misiones Neuquén Río Negro Salta San Juan San Luis Santa Cruz Santa Fe Santiago del Estero Tierra del Fuego Tucumán]
end
