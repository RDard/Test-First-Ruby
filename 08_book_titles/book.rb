class Book
	#def initialize(title)
	#	@title = title 
	#end

	def title=(phrase)
		@title = phrase.capitalize!
        @phrase = phrase
		@exceptions = ["the", "a", "an", "and", "of", "in"]

		if @phrase.include?(' ')
			@title = @phrase.split.each do |x|
				if !(@exceptions.include?(x))
					x.capitalize!
       		 	end
			end
			@title = @title.join ' '
		end
        @title
	end

	def title
		@title
	end
end