def translate original_word
	first_vowel_pos = 0
	translated_word = ""

	if original_word.include?(' ')
		return original_word.split.map{ |x| translate(x) }.join ' '
	end

	else 
		first_vowel_pos = original_word.index(/[aeiou]/)
		translated_word = original_word[first_vowel_pos, original_word.length] + original_word[0, first_vowel_pos] + "ay"
	
		return translated_word	
end

