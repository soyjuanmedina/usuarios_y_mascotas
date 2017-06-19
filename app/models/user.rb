class User < ApplicationRecord
  has_many :pets
  validates_length_of :pets, maximum: 4
  validates :name, presence: true
end
