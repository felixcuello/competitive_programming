#!/bin/ruby

require 'json'
require 'stringio'

def gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end

def gcd_array(arr)
  result = arr[0]
  0.upto(arr.count - 1) do |i|
    result = gcd(arr[i], result)
  end
  result
end

def lcm(a, b)
  (a / gcd(a, b)) * b;
end

def lcm_array(arr)
  result = arr[0]
  0.upto(arr.count - 1) do |i|
    result = lcm(arr[i], result)
  end
  result
end

def not_divisor?(val, arr)
  arr.each do |e|
    return false if e % val != 0
  end
  true
end

def getTotalX(a, b)
  min = lcm_array(a)
  max = gcd_array(b)

  result = 0
  1.upto(100) do |n|
    candidate = n*min
    break if n*min > max
    next unless not_divisor?(candidate, b)
    result += 1
  end
  result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

n = first_multiple_input[0].to_i

m = first_multiple_input[1].to_i

arr = gets.rstrip.split.map(&:to_i)

brr = gets.rstrip.split.map(&:to_i)

total = getTotalX arr, brr

fptr.write total
fptr.write "\n"

fptr.close()
