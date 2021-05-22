class CultivationRecord < ApplicationRecord
  validates :soil_humidity, numericality: true 
end
