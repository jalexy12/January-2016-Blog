class Blog
	def initialize
		@posts = []
	end

	def add_post(some_post)
		@posts.push(some_post)
	end	

	def publish_front_page
		sorted_posts = @posts.sort { | post1, post2 | post2.date <=> post1.date }

		sorted_posts.each do | post | 
			post.display
		end
	end
end