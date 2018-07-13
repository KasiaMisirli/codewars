def driver(data)
  #1-5 surname
  surname = data[2] + "9999"
  driver_surname = surname.upcase.slice(0,5)
  # 6 year of birth-3rd digit
  year_third_digit = data[3].split("-").slice(2,2).join().split("")[2]
  # 7-8 month of birth as integer
  months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  driver_month = data[3].split("-").slice(1,1).join().split("").slice(0,3).join("")
  month_number = 0
  if data[4] == "M"
    months.each { |a|  if a == driver_month
      month_index = months.index(a) + 1
      if month_index < 10
        month_index_str = month_index.to_s
        month_number = "0"+ month_index_str
      else
        month_index_str = month_index.to_s
        month_number = month_index_str
      end
    end
    }
  elsif data[4]== "F"
    months.each { |b|  if b == driver_month
      month_number = months.index(b) + 51
    end
  }
  end
    #9-10 day of birth
    day = data[3][0]+data[3][1]
    #11 year of birth-last digit
    year_last_digit = data[3].split("-").slice(2,2).join().split("")[3]
    #12-13 first letters in both names
    if data[1][0] == nil
      name = data[0][0]+"9"
    elsif data[1][0] != nil
      name = data[0][0]+ data[1][0]
    end
    #14-15 always 9
    "9"
    #16-17 always AA
    "AA"
  return driver_surname+year_third_digit+month_number.to_s+day+year_last_digit+name+"9"+"AA"
end

 driver(["Johanna","","Gibbs","13-Dec-1981","M"]) 
 