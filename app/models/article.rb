class Article < ActiveRecord::Base

  has_many :bookmarked_articles
  belongs_to :feed

  attr_accessible :content, :image, :title
end
