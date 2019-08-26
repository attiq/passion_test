require 'rails_helper'

RSpec.describe Category, type: :model do
  # Association test
  it {should belong_to(:vertical)}
  it {should have_many(:courses).dependent(:destroy)}

  # Validation tests
  it {should validate_presence_of(:name)}
  it {should validate_uniqueness_of(:name)}
end
