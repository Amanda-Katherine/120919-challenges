=begin
  Use the method defined below that accepts an array of integers as an argument
  The method should return a hash with four key-value pairs:
  - length
  - first_index
  - last_index
  - maximum_value

  The length key should have a value of the length of the array
  The first_index key should have a value of the first element in the array
  The last_index key should have a value of the last element in the array
  The maximum_value key should have a value of the hightest integer in the array
=end

def arr_data(array)

end


puts arr_data([1,5,2,78,2,3,6,1,3,5,1,6,4,2,63])
  #=>expected return: {:length=>15, :first_index=>1, :last_index=>63, :maximum_value=>78}
