class Book < ActiveRecord::Base
  attr_accessible :author, :coverUrl, :isbn, :link, :publisher, :summary, :title
end
