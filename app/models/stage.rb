class Stage < ApplicationRecord
  belongs_to :teddy
  validates :date, presence: true
  validates :content, presence: true
  validates :backpacker_name, presence: true
  validates :backpacker_description, presence: true
  validates :adress, presence: true
  validates :backpacker_origin, presence: true
  has_attachment :backpacker_photo, presence: true

  has_attachments :photos, presence: true


  geocoded_by :adress
  after_validation :geocode, if: :adress_changed?
  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.city    = geo.city
      obj.country = geo.country
    end
  end
  after_validation :reverse_geocode
end
