class Teddy < ApplicationRecord
  belongs_to :user
  has_many :stages, dependent: :destroy
  has_many :followers
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_attachments :photos


end
