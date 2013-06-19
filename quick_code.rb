def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def divide(a, b)
  return a / b
end

#Gives values to the variables going into the calc operation
def prompt_numbers
  puts "Give me a number"
  a = gets.chomp.to_f
  puts "Give me another number"
  b = gets.chomp.to_f
  return a, b
end
#Called first by: def prompt to set calculator operation
def prompt_function
  puts "Add, subtract, multiply, divide?"
  return gets.chomp.downcase #returns answer to above Q for: def prompt
end
#Master prompt
def prompt
  function = prompt_function #takes function (add, sub etc) from: prompt_function
  a, b = prompt_numbers #takes variables from: def prompt_numbers
  return a, b, function
end

#vvv Still hard to grasp this vvv
a, b, math_function = prompt

#prints the values of the functions the user entered as strings into the prompt
puts case math_function
  when "add"
    add(a, b)
  when "subtract"
    subtract(a, b)
  when "multiply"
    multiply(a, b)
  when "divide"
    divide(a, b)
  end
