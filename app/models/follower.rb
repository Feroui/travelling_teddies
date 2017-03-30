class Follower < ApplicationRecord
  belongs_to :user
  belongs_to :teddy
  validates :teddy, presence: true, uniqueness: { scope: :user }

end
