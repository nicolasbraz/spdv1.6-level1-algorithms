# frozen_string_literal: true

# Ruby program to calculate maximum
# sum with equal stack sum 

# Returns maximum possible equal sum of three 
# stacks with removal of top elements allowed 

def max_sum(stack1, stack2, stack3, n1, n2, n3)
  sum1 = 0
  sum2 = 0
  sum3 = 0

  n1.times do |i|
    sum1 += stack1[i]
  end

  n2.times do |i|
    sum2 += stack2[i]
  end

  n3.times do |i|
    sum3 += stack3[i]
  end

  top1 = 0
  top2 = 0
  top3 = 0
  ans  = 0

  while 1
    if top1 == n1 || top2 == n2 || top3 == n3
      return 0
    end

    if sum1 == sum2 && sum2 == sum3
      return sum1
    end

    if sum1 >= sum2 && sum1 >= sum3
      sum1 -= stack1[top1]
    elsif sum2 >= sum1 && sum2 >= sum3
      sum2 -= stack2[top2]
    elsif sum3 >= sum2 && sum3 >= sum1
      sum3 -= stack3[top3]
    end
  end
end

  # Driven program

  stack1 = [3, 2, 1, 1, 1]
  stack2 = [4, 3, 2]
  stack3 = [1, 1, 4, 1]

  n1     = stack1.length 
  n2     = stack2.length 
  n3     = stack3.length

  puts max_sum(stack1, stack2, stack3, n1, n2, n3)