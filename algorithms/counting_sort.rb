# frozen_string_literal: true

# Ruby Program for counting sort

def count_sort(arr)

  # The output character array that will have sorted arr
  output = Array.new(arr.length())

  # Create a count array to store count of inidividual
  # characters and initialize count array as 0
  count = Array.new(256, 0)

  # For storing the resulting answer since the string is immutable  
  ans = Array.new()

  # Store count of each character
  for i in 0..(arr.length() - 1)
    count[arr[i].ord] += 1
  end

  # Change count[i] so that count[i] now contains actual
  # position of this character in output array 
  for i in 0..255
    count[i] += count[i -1]
  end

  # Build the output character array
  for i in 0..arr.length() -1
    output[count[arr[i].ord] - 1] = arr[i]
    count[arr[i].ord] -= 1
  end

  # Copy the output array to arr, so tha arr now
  # contais sorted characters
  for i in 0..(arr.length() - 1)
    ans[i] = output[i]
  end

  return ans
end

# Driver program to test above function
arr = 'geeksforgeeks'
ans = count_sort(arr)
puts "Sorted character array is #{ans.join('')} "