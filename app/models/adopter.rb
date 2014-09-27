class Adopter < ActiveRecord::Base
  validates :name, :description, :score, presence: true
end
