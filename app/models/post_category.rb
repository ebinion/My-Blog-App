class PostCategory < ActiveRecord::Base
  attr_accessible :category_id, :post_id
  
  belongs_to :posts
  belongs_to :category
end
