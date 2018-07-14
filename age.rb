def predict_age(age_1, age_2, age_3, age_4, age_5, age_6, age_7, age_8)
  array = []
  total_age = 0
  array << age_1 * age_1
  array << age_2 * age_2
  array << age_3 * age_3
  array << age_4 * age_4
  array << age_5 * age_5
  array << age_6 * age_6
  array << age_7 * age_7
  array << age_8 * age_8
  array.each do |age|
    total_age += age
  end
    squared = Math.sqrt(total_age)
    final = squared/2
    return final.floor
end
predict_age(65,60,75,55,60,63,64,45)

# another way to deal with multiple parameters:
# predict_age(*ages)
# ages.map{age...}