class Comment < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :bookmarked_article
  
  attr_accessible :body
end
