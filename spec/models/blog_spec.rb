require 'rails_helper'

# Test suite for the Blog model
RSpec.describe Blog, type: :model do
  # Association test
  # ensure Blog model has a 1:m relationship with the Comment model
  it { should have_many(:comments).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:created_by) }
end
