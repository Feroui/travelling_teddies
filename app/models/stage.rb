class Stage < ApplicationRecord
  belongs_to :teddy
  validates :date, presence: true
  validates :contet, presence: true
  validates :backpacker_name, presence: true
  validates :backpacker_description, presence: true
  validates :adress, presence: true
end
