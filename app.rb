require_relative("lib/post.rb")

my_post = Post.new("Creating your first iOS framework", Time.new(2016, 01, 07), "Learn to build your own iOS framework that’s compatible with Carthage, CocoaPods and git submodules.")
my_post.display