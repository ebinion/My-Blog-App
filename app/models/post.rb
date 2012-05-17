class Post < ActiveRecord::Base
  attr_accessible :body, :slug, :title, :user_id
  
  belongs_to :user
  
  has_many :post_categories
  has_many :categories, :through => :post_categories
end
