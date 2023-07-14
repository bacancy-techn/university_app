class Student < ApplicationRecord
  belongs_to :department

  validates :name, :date_of_birth, presence: true
  validates :email, presence: true, uniqueness: true
  
end
