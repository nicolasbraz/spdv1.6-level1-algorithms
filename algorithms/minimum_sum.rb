# frozen_string_literal: true

# Ruby program to minimize the 
# cost of array minimization

# Returns minimum possible
# sum in array B

def min_sum(arr)
  min_val = arr.min # 3

  min_val * (arr.count - 1)
end
  # Driver code 
  arr = [3, 6, 2, 8, 7, 5]
  puts min_sum(arr)