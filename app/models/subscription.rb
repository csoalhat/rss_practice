class Subscription < ActiveRecord::Base
  
  has_many :feeds
  has_many :users
  
  # attr_accessible :title, :body
end
