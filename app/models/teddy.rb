class Teddy < ApplicationRecord
  belongs_to :user
  has_many :stages
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
