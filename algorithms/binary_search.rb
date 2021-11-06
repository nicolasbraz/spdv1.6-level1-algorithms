# frozen_string_literal: true

# Ruby program to implement
# Recursive binary Search

# A recursive binary search
# function. It returns location
# of x in given array arr[l..r]
# is present, otherwise - 1

def binary_search(arr, l, r, x)
  if r >= l
    mid = l + (r - l)

    # If the element is present
    # at the middle itself
    if arr[mid] == x
      return mid
    end

    # If element is smaller than
    # mid, then it can only be
    # present in left subarray

    if arr[mid] > x
      return binary_search(arr, l, mid - 1, x)

      # Else the element can only
      # be present in right subarray
      return binary_search(arr, mid + 1, r, x)
    end
  end
  # We reach here when element
  # is not present in array
  - 1
end

arr = [2, 3, 4, 10, 40]
n   = arr.count
x   = 10
result = binary_search(arr, 0, n - 1, x)
if result == - 1
  puts 'Element is not present in array'
else
  puts "Element is present at index #{result}"
end