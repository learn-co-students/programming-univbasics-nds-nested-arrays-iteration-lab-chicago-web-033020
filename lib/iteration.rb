def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  result = []
  i = 0
  while i < src.length do
    #src.length is the number of elements in the src array
    mini_array = src[i]
    #setting inner, a variable, equal to the i-th element in the array, which is another 2-element array
    result.push("I love #{mini_array[0]} and #{mini_array[1]} on my pizza")
    #since mini_array is set to a 2-element array, mini_array[0] will be the first element in the array etc.
    i += 1
  end
  result
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  result = []
  #this is your new array
  i = 0
  while i < src.length do
    result.push(src[i][0] > src[i][1] ? src[i][0] : src[i][1])
    i += 1
    #for the length of the array, if src[i][0] > src[i][1], push src[i][0]. if false push src[i][1]
    end
  result
  #implicit return of result array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i = 0
  total = 0
  #total should start at 0
  while i < src.length do
    if ((src[i][0] % 2 == 0) && (src[i][1] % 2 == 0))
      total += (src[i][0] + src[i][1])
      #for the length of the array, divide src[i][0] by 2 and src[i][1] by 2. if both answers are 0, then
      #add the two numbers to the total
    end
    i += 1
    #increment to the next array
  end
  total
end
