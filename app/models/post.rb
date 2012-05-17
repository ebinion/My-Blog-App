class Post < ActiveRecord::Base
  attr_accessible :body, :slug, :title, :user_id
  
  belongs_to :user
  
  has_and_belongs_to_many :categories
end
