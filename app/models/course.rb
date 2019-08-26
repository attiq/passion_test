class Course < ApplicationRecord
  # model association
  belongs_to :category

  # validations
  validates_presence_of :name
  validates_presence_of :author
end
