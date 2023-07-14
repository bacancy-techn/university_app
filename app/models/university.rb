class University < ApplicationRecord
  has_many :colleges, dependent: :destroy

  validates :name, :address, presence: true
end
