require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require_relative("lib/sponsored_post.rb")

my_blog = Blog.new
my_blog.add_post Post.new("Creating your first iOS framework", Time.new(2016, 01, 07), "Learn to build your own iOS framework that’s compatible with Carthage, CocoaPods and git submodules.")
my_blog.add_post Post.new("User testing gone wild: A guide to course correction", Time.new(2015, 12, 24), "After some unexpected twists, here's how to get your user tests back on track.")
my_blog.add_post Post.new("Email confirmation with Clearance", Time.new(2016, 12, 23), "Leverage Clearance's guards to add email confirmation to your Rails app.")
my_blog.add_post Post.new("Announcing Beggar", Time.new(2015, 12, 21), "Automatically nudge your teammates for code reviews.")
my_blog.add_post SponsoredPost.new("Painting a picture of mental health", Time.new(2015, 12, 22), "People with hobbies are generally healthier. They're also at lower risk for some mental health issues.")

my_blog.publish_front_page

input = ""

while input != "exit"
	puts "next for next page, prev for previous page, exit to exit"
	input = gets.chomp

	if input == "next"
		#Bonus: clear the terminal before publishing, only see the posts you selected
	  my_blog.next_page
	elsif input == "prev"
	  my_blog.prev_page
	elsif input != "exit"
		puts "Command not recognized"
	end
end