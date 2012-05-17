# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
Category.delete_all
User.delete_all

u = User.create name: "Default User", email: 'default@admin.com', password: 'abc', password_confirmation: 'abc'
c = Category.create name: "Default Category"
c2 = Category.create name: "Default Category 2"
p = Post.create title: "Test Post Title", slug: "test-post-slug", user_id: u.id, body: "Post body.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."

a = p.categories << c
a = p.categories << c2



if u && c && p && a
  puts "The database migration was a SUCCESS!"
else
  puts "ERROR!"
end