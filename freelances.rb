def work_needed(project_minutes, freelances)
  total_arr = []
  sum_of_all = 0
  freelances.each do |freelancer| 
    total_arr << ((freelancer[0]*60)+freelancer[1])
    sum_of_all = total_arr.inject(0, :+)
  end
  remaining = project_minutes - sum_of_all
  if sum_of_all >= project_minutes
     return "Easy Money!"
  elsif remaining > 0 && remaining < 59
     return "I need to work 0 hour(s) and "+remaining.to_s+" minute(s)"
  elsif remaining == 60
    return  "I need to work 1 hour(s) and 0 minute(s)"
  elsif remaining > 60
     hours = remaining/60.0
     time_arr = hours.to_s.split(".")
     single_hour = time_arr[0]
     minutes = remaining % 60
     return "I need to work "+single_hour.to_s+" hour(s) and "+minutes.to_s+" minute(s)"
  end
end
