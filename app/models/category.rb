class Category < ApplicationRecord
  TYPES = ["Negocios", "Comida y bebida", "Salud", "Música", "Autos, barcos y aviones", "Organizaciones y causas benéficas", "Tecnología", "Moda", "Espiritualidad", "Gobierno", "Deportes y Salud","Otros"]
  belongs_to :talk

  validates :title, inclusion: { in: TYPES} 
end
