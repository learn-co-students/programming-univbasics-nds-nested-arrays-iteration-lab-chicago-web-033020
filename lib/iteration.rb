def join_ingredients(src)
  pizza =[]
  row_index = 0
  while row_index < src.count do
      pizza.push("I love "+ src[row_index][0] + " and " + src[row_index][1] + " on my pizza")
      row_index += 1
    end
    pizza
    
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
end

def find_greater_pair(src)
  greater = []
  row_index = 0 
  while row_index < src.count do 
    great = src[row_index].sort
    greater.push(great[-1])
    row_index += 1 
  end
  greater
  
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
end

def total_even_pairs(src)
  row_index = 0
  total = 0
  while row_index < src.count do 
    element_index = 0
    true_row_value = 0
    row_value = 0
    while element_index < src[row_index].count do
      true_row_value += src[row_index][element_index]
      if src[row_index][element_index] % 2 == 0
        row_value += src[row_index][element_index]
      else 
        row_value -= src[row_index][element_index]
      end
      element_index += 1 
    end
    if row_value == true_row_value
        total += true_row_value
      end
    row_index += 1
  end
  total 
  
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
end
