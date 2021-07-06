class Category < ApplicationRecord
  TYPES = [
    "Negocios",
    "Comida y bebida",
    "Salud", 
    "Música",
    "Autos, barcos y aviones",
    "Organizaciones y causas benéficas",
    "Tecnología",
    "Moda",
    "Espiritualidad",
    "Gobierno",
    "Deportes y Salud",
    "Otros"
  ]
  
  validates :title, inclusion: { in: TYPES }
  has_many :talks
end
