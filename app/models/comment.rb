class Comment < ActiveRecord::Base
  belongs_to :review
  attr_accessible :body, :commenter
end
