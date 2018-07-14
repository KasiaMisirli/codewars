def remove_rotten(fruit_basket) 
  if fruit_basket == nil
    return []
  elsif fruit_basket != nil
    lower_case = []
    fruit_basket.each do |fruit|
    fruit.gsub!("rotten","")
    lower_case << fruit.downcase
    end
  end
  return lower_case
end

remove_rotten(["apple","rottenBanana","kiwi","rottenMango"])