class Vertical < ApplicationRecord
  # model association
  has_many :categories, dependent: :destroy

  # validations
  validates_presence_of :name
  validates_uniqueness_of :name
end
