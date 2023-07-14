class Library < ApplicationRecord
  belongs_to :college
  has_many :books, dependent: :destroy
end
