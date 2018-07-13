def accum(s)
  final = []
	letters = s.upcase
  letters_array = letters.split("")
  letters_array.each_with_index do |letter,index|
    l = letter.downcase
    final << letter + l * index
    # letter = nil
    # print letters_array.index(letter)
  end
  print final.join("-")
end
accum("NyffsGeyylB")