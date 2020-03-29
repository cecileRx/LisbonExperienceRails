class Tour < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :full_information, presence: true

  has_many_attached :photos
end
