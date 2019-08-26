require 'rails_helper'

RSpec.describe Course, type: :model do
  # Association test
  it {should belong_to(:category)}

  # Validation tests
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:author)}
end
