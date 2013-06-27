class Booklist < ActiveRecord::Base
  belongs_to :department
  attr_accessible :creator, :intro, :title
end
