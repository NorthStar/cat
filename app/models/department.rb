class Department < ActiveRecord::Base
  has_many :reviews
  has_many :videos
  has_many :booklists
  attr_accessible :name, :story
end
