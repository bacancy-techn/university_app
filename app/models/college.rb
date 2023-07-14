class College < ApplicationRecord
  belongs_to :university
  has_many :departments, dependent: :destroy

  validates :name, :address, presence: true
end
