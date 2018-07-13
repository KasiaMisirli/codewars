def sort_my_string(s)
  even = []
  odd = []
  arr = s.split("")
  arr.each_with_index do |letter,index|
    if index % 2 == 0
      even << letter 
    elsif index % 2 != 0
      odd << letter
    end
  end
  print even.join()+" "+odd.join()
end
sort_my_string("CodeWars")
