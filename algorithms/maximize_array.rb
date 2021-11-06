# frozen_string_literal: true

# Ruby program to maximize
# array sum after k operations.

# This function does k operations
# on array in a way that maximize
# the array sum. index --> stores
# the index of current minimum
# element for j'th operation
def maximum_sum(arr, n, k)
  # Modify array K
  # number of times
  for i in 1..k + 1 do 
    min   = +2147483647
    index = - 1

    # Find minimum element in
    # array for current operation
    # and modify it i.e;

    for j in 0..n - 1 
      if (arr[j] < min)
        min = arr[j]
        index = j
      end
    end

    # this the condition if we
    # find 0 as minimum element, so
    # it will useless to replace 0
    # by -(0) for remaining operations
    if min == 0
      break
    end

    # Modify element of array
    arr[index] = -arr[index]
  end
  # Calculate sum of array
  sum = 0
  for i in 0..n - 1
    sum += arr[i]
  end
end

# Driver Code
arr = [-2, 0, 5, -1, 2]
k = 4
n = arr.length
puts maximum_sum(arr, n, k)
