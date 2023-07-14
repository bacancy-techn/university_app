class Course < ApplicationRecord
  belongs_to :department
  has_many :professors, dependent: :destroy
  has_many :books, dependent: :destroy

  validates :title, :description, presence: true
end
