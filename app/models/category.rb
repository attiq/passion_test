class Category < ApplicationRecord
  # model association
  belongs_to :vertical
  has_many :courses, dependent: :destroy

  # validations
  validates_presence_of :name
  validates_uniqueness_of :name
end
