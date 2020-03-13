=begin
Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
 Build a new Array that contains strings where each pair of foods is
 inserted into this template:
  returns an Array of Strings of the form "I love element1 and element2 on my pizza"
  （"I love (inner array element 0) and (inner array element 1) on my pizza"）
As such, there should be a new String for each inner array, or pair
=end
def join_ingredients(src)
  newArray = []#先设一个新array
    row_index = 0 #这个是i
    while row_index < src.length do #src.length shows how many elements in the src array
      #set inner array, a variable, equal to the i-th element in the array, which is another 2-element array
      newArray<<"I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
                      #martix[row_index][element_index]
      #这个也行
      #result.push("I love #{row_index[0]} and #{row_index[1]} on my pizza")
      row_index += 1
    end
    newArray
  end
##############################################################################################
# src will be an array of [ [number1, number2], ... [numberN, numberM] ]
# Produce a new Array that contains the larger number of each of the pairs
# that are in the inner Arrays
def find_greater_pair(src)
  newArray = []#先设一个新array
    row_index = 0 #这个是index 或者 i
    while row_index < src.length do #src.length shows how many elements in the src array
      #这个也行
      newArray.push(src[row_index][0] > src[row_index][1] ?    src[row_index][0] :   src[row_index][1])
      #                                    如果第0位>第1位 ?     True就插入第0位   ：   False就插入第1位
=begin
#简单粗暴的表示方法
      if src[row_index][0] > src[row_index][1] #row_index[0] will be the first element in the array etc.
        newArray<<src[row_index][0]  #martix[row_index][element_index]
      else
       newArray<<src[row_index][1]
      end
=end
      row_index += 1
    end
    newArray
end
################################################################
=begin
#简单粗暴的表示方法
# src will be an array of [ [number1, number2], ... [numberN, numberM] ]
# if both numbers in the pair are even, then add both those numbers to the
# total
#
# As a reminder any number % 2 will return 0 or 1. If the result is 0, then
# the number was even. Review the operator documentation if you've forgotten
# this!
=end
def total_even_pairs(src)
total=0
row_index=0 #这个是index 或者 i
  while row_index < src.length do #src.length shows how many elements in the src array
      if (src[row_index][0]%2==0 &&  src[row_index][1]%2==0)
      total+=(src[row_index][0]+src[row_index][1])
      end
    row_index += 1
    end
  total
  end
