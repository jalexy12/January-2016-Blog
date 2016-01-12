class Post
	def initialize(title, date, text)
		@title = title 
		@date = date
		@text = text
	end

	def display
		puts @title
		puts "-" * @title.length
		puts ""
		puts @date
		puts ""
		puts @text
		puts "\n\n/*--------------------------*/\n\n"
	end
end