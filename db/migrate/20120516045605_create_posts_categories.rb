class CreatePostsCategories < ActiveRecord::Migration
  def change
    create_table :categories_posts do |t|
      t.integer :category_id
      t.integer :post_id

      t.timestamps
    end
  end
end
