# frozen_string_literal: true

# Ruby program for right rotation of
# an array (Reversal Algorithm)
# Function to reverse arr[] from index start to end

def reverse_array(arr, start, last)
  while start < last
    arr[start], arr[last] = arr[last], arr[start]
    start += 1
    last  -= 1
  end
end

# Function to right rotate arr[] of size n by d */
def right_rotate(arr, d, n)
  reverse_array(arr, 0, n - 1)
  reverse_array(arr, 0, d - 1)
  reverse_array(arr, d, n - 1)
end

# function to print an array
def print_array(arr)
  puts arr.join(' ')
end

# driver code
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

n = arr.length
k = 3

right_rotate(arr, k, n)
print_array(arr)
