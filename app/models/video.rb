class Video < ActiveRecord::Base
  belongs_to :department
  attr_accessible :img, :intro, :title, :url
end
