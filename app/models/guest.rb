class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def self.desired
    self.joins(:appearances).where("appearances.rating > 3").uniq
  end
end
