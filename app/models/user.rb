# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  PROVINCES = ['CABA', 'Buenos Aires', 'Catamarca', 'Chaco', 'Chubut', 'Córdoba', 'Corrientes', 'Entre Ríos', 'Formosa', 'Jujuy', 'La Pampa' 'La Rioja', 'Mendoza', 'Misiones', 'Neuquén', 'Río Negro', 'Salta', 'San Juan', 'Santa Cruz', 'Santa Fe', 'Santiago del Estero', 'Tierra del Fuego', 'Tucumán']

  validates :province, inclusion: { in: PROVINCES }
  validates :registration_number, length: { is: 6 }, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :first_name, length: { in: 2..20 }, allow_blank: true
  validates :last_name, presence: true
  validates :last_name, length: { in: 2..20 }, allow_blank: true
end
