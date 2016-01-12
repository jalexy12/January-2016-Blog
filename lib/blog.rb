class Blog
	def initialize
		@posts = []
	end

	def add_post(some_post)
		@posts.push(some_post)
	end	

	def publish_front_page
		@posts.each do | post | 
			post.display
		end
	end
end