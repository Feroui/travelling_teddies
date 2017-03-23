class Teddy < ApplicationRecord
  before_validation :generate_code, on: :create
  belongs_to :user
  has_many :stages, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :code, presence: true, uniqueness: true
  has_attachments :photos


  private

  def generate_code
    self.code = loop do
      random_code = SecureRandom.base64(6)
      break random_code unless Teddy.exists?(code: random_code)
    end
  end

  # def generate_code
  #   self.code = SecureRandom.base64(10) if code.blank?
  # end
end
