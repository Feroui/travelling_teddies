class Stage < ApplicationRecord
  belongs_to :teddy
  validates :date, presence: true
  validates :content, presence: true
  validates :backpacker_name, presence: true
  validates :backpacker_description, presence: true
  validates :adress, presence: true
  has_attachments :photos
end
