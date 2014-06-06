def translate original_word
    first_vowel_pos = 0
	translated_word = ""
    puts original_word.index("qu")
    
	if original_word.include?(' ')
		return original_word.split.map{ |x| translate(x) }.join ' '
	end

	else 
        if original_word.include?("qu")
            if original_word.index("qu") < original_word.index(/[aeiou]/)
		     first_vowel_pos = original_word.index("qu") + 2
            end
        
        else
            first_vowel_pos = original_word.index(/[aeiou]/)
        end
        
		translated_word = original_word[first_vowel_pos, original_word.length] + original_word[0, first_vowel_pos] + "ay"
	
		return translated_word	
end

