def echo word
	word
end

def shout word
	word.upcase
end

def repeat(word, number = 2)
	 ( "#{word} " * number ).strip
end

def start_of_word(word, position)
	word[0..position - 1]
end

def first_word word
	word.split[0]
end

def titleize word
	title = ''
	title = word.split.each {|x| x = x.to_s.capitialize }
	return title
end

