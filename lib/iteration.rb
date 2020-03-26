def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  ingredient_array = Array.new
  row_index = 0
  while row_index < src.count do
    element_index = 0
    topping1 = src[row_index][0]
    topping2 = src[row_index][1]
  ingredient_array.push("I love #{topping1} and #{topping2} on my pizza")
  row_index += 1
end
ingredient_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  larger_number = []
   row_index = 0
   while row_index < src.count do
     element_index = 0
   if src[row_index][0] > src[row_index][1]
       larger_number.push(src[row_index][0])
   else larger_number.push(src[row_index][1])
end
row_index += 1
end
larger_number
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  row_index = 0
   while row_index < src.count do
   element_index = 0
   if src[row_index][0] % 2 == 0 and src[row_index][1] % 2 == 0
      total2 = src[row_index][0] + src[row_index][1]
      total += total2
end
row_index += 1
end
total
end