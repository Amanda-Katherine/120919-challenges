=begin
Use the method below that accepts an array
The method should return a hash where the keys are unique elements in the array
and the values are integers counting how often that element appeared in the array


=end
def frequency_count(a)
  a.group_by{|element| element}.collect{|key, value| [key, value.length]}.to_h
end

def frequency_count(a)
  # a.group_by{|element| element}.collect{|key, value| [key, value.length]}.to_h  
  # a.collect{|key, value| [key, value]}.to_h  
  a.group_by{|element| element}.collect{|key, value| [key, value.length]}.to_h
  # a.group_by{|element| element}.collect{|key, value| [key, value.length]}
  # a.group_by{|element| element}.collect{|key, value| [key]}.flatten#.to_h  
  # a.to_h
end



puts frequency_count([1,5,2,78,2,3,6,1,3,5,1,6,4,2,63,78,2,1,1,3,1,1,5,2,1,1,63])
  #expected return: {1=>9, 5=>3, 2=>5, 78=>2, 3=>3, 6=>2, 4=>1, 63=>2}

puts frequency_count([1,1,1,2,2,3])
  #expected return: {1=>3, 2=>2, 3=>1}
