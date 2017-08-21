class Comment < ApplicationRecord
 # model association
 belongs_to :blog

 # validation
 validates_presence_of :description, :created_by
end
