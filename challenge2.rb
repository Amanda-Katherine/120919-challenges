=begin
Use the method defined below that accepts two arguments:
  The first argument will always be an array of strings
  The second argument could be either a String OR an Integer

First, you will need to check what data type the second argument is
  Hint: Check out these two methods to help figure that out!
    https://apidock.com/ruby/v2_5_5/Object/class
    https://apidock.com/ruby/Object/is_a%3F

If the second argument is an INTEGER you will want to RETURN a new array
that ONLY includes the elements that have more letters than that integer

If the second argument is a STRING you will want to return a new array that
only includes the elements that have that string as a substring

=end


# def array_checker(array, arg)
#   if arg.class == Integer
#     array.collect do |string|
#       if string.length > arg
#          string
#       end
#     end
#   elsif arg.class == String
#     array.collect do |string|
#       if string.include?(arg)
#          string
#       end
#     end
#   end
# end

#or you can do this:
def array_checker(array, arg)
  if arg.is_a? Integer
    array.select {|string| string.length > arg}
  elsif arg.is_a? String
    array.select {|string| string.include?(arg)}
  end
end

puts array_checker(["Bob", "Sarah", "Jeff", "Molly", "Alice", "Judy", "Johnathon", "Joe"], 4)
  #expected return: ["Sarah", "Molly", "Alice", "Johnathon"]

puts array_checker(["hello", "there", "everybody"], 8)
  #expected return: ["everybody"]

puts array_checker(["hello", "there", "everybody"], 10)
  #expected return: []

puts array_checker(["hello", "there", "everybody"], "er")
    #expected return: ["there", "everybody"]

puts array_checker(["hello", "there", "everybody"], "hi")
  #expected return: []

puts array_checker(["hello", "there", "everybody"], "e")
    #expected return: ["hello", "there", "everybody"]
