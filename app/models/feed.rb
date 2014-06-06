class Feed < ActiveRecord::Base

  has_many :bookmarked_articles
  has_many :users, through: :subscriptions
  has_and_belongs_to_many :categories
  has_many :articles


  attr_accessible :description, :title, :url

end
