class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # validates_uniqueness_of :cocktail_id, :ingredient_id
  # validates_uniqueness_of :id, scope => [:cocktail_id, :ingredient_id]
  validates :cocktail, uniqueness: { scope: :ingredient }
end
