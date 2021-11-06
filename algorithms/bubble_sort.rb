# frozen_string_literal: true

# Ruby program for implementation of Bubble Sort

def bubble_Sort(arr)
  n = arr.count
  # Traverse through all array elements

  range = 0..(n - 1)

  range.each do |i|
    (0..((n - 1) - i - 1)).each do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
end

# Driver code to test above
arr = [64, 34, 25, 12, 22, 11, 90]

bubble_Sort(arr)

p 'Sorted array is: '

(0..arr.count - 1).each do |i|
  puts(arr[i])
end