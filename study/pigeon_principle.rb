#  Pigeon principle states that: If you have n pigeons and n-1 holes.
#  at least ONE hole is going to hold 2 or more pigeons.
#
#  The idea is taht if you want to create a number that it's divisible
#  by n and only contains 1s and 0s, then you can find
#
#  1
#  11
#  111
#  1111
#  ....
#  1....111...1  [with n elements]
#
#  There are only 2 possibilities:
#
#  1. One of these numbers is divisible by n
#  2. Two numbers are NOT divisible by n, but have the same reminders
#
#  Therefore (a-b) or (b-a) will be divisible by n, and consisting only of 1s and 0s

def ones(i)
  ('1' * i).to_i
end

print "n> "
n = readline.chomp.to_i

reminders = {}
n.times do |i|
  num = ones(i+1)
  rem = num % n

  if rem == 0
    puts num
    break
  end

  if reminders.key?(rem)
    a = num
    b = reminders[rem]
    puts (a>b) ? (a-b) : (b-a)
    break
  else
    reminders[rem] = num
  end
end

