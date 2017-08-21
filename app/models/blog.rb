class Blog < ApplicationRecord
  # model association
  has_many :comments, dependent: :destroy

  # validations
  validates_presence_of :title, :description, :created_by
end
