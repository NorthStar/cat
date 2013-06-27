class Review < ActiveRecord::Base
  belongs_to :department
  has_many :comments, dependent: :destroy
  attr_accessible :content, :creator, :title
  validates :title, presence: true,
                    length: { minimum: 5 }
end
