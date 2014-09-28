class Adopter < ActiveRecord::Base
  validates :name, :description, :score, presence: true

  def self.worse(n=1)
    order(:score).limit(n)
  end
end
