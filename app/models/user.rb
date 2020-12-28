class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PROVINCES = %w[CABA Buenos Aires Catamarca Chaco Chubut Córdoba Corrientes Entre Ríos Formosa Jujuy La Pampa La Rioja Mendoza Misiones Neuquén Río Negro Salta San Juan Santa Cruz Santa Fe Santiago del Estero Tierra del Fuego Tucumán]
end
