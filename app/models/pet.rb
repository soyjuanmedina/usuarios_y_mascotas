class Pet < ApplicationRecord
  belongs_to :user
  validates_associated :user
  enum sexo: [ :macho, :hembra ]
  enum sex: [ :Dog, :Rat, :Cat, :Chinchilla ]
end
