class Book < ApplicationRecord
  belongs_to :course
  belongs_to :library
end
