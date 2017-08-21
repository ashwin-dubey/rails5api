require 'rails_helper'

# Test suite for the Item comment
RSpec.describe Comment, type: :model do
  # Association test
  # ensure a comment record belongs to a single blog record
  it { should belong_to(:blog) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:created_by) }
end
