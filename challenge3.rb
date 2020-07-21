require 'pry'
=begin
Use the method below that accepts an array of strings

  You will sort the array so that the elements that have
  a space within will be first and the ones without will be following
  The elements with spaces should be in alphabetical order while the elements
  without spaces should be in reverse alphabetical order

  The method should return that new array

=end
  def sorting_arrays(array)
    space_array = array.sort.select {|string| string.include?(" ")}
    space_array << array.sort.reverse.select {|string| !string.include?(" ")
    space_array}
  end

  # def sorting_arrays(array)
  #   space_array = []
  #   no_space_array = []

  #   array.select do |string|
  #     if string.split.size > 1
  #       space_array << string
  #     else
  #       no_space_array << string
  #     end
  #   end

  #   space_array = space_array.sort #{|a, b| a <=> b }
  #   no_space_array = no_space_array.sort {|a, b| b <=> a }
  #   space_array + no_space_array
  # end


puts sorting_arrays(["hello there", "hi", "bye", "cya later", "sup", "good day", "good morning", "farewell"])
  # expected return: ["cya later", "good day", "good morning", "hello there", "sup", "hi", "farewell", "bye"]
