class Department < ApplicationRecord
  belongs_to :college
  has_many :students, dependent: :destroy
  has_many :professors, dependent: :destroy
  has_many :courses, dependent: :destroy

  validates :name, presence: true
end
