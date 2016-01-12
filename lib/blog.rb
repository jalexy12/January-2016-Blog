class Blog
	def initialize
		@posts = []
		@current_page = 1
	end

	def add_post(some_post)
		@posts.push(some_post)
	end	

	def publish_front_page
		sorted_posts = @posts.sort { | post1, post2 | post2.date <=> post1.date }

		first = (@current_page - 1) * 3
		last = (@current_page * 3) - 1

		system "clear" or system "cls"

		sorted_posts[first..last].each do | post | 
			post.display
		end
		puts pagination_section
	end

	def next_page
		unless last_page?
			@current_page += 1
		end

		publish_front_page
	end

	def prev_page
		unless first_page?
			@current_page -= 1
		end

		publish_front_page
	end


	private

	def pagination_section
		section = ""
		(1..max_pages).each do | num |
			if num == @current_page
				section += " [#{num}] "
			else
				section += " #{num} "
			end
		end
		section
	end

	def max_pages
		(@posts.length / 3.0).ceil
	end

	def first_page?
		@current_page == 1
	end

	def last_page?
		puts "Current: #{@current_page}, Max: #{max_pages}"
		@current_page == max_pages
	end
end
