class BookmarkedArticle < ActiveRecord::Base

  belongs_to :user
  belongs_to :article
  has_many :comments
  has_one :thought

  attr_accessible :thought
end
