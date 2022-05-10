n, a, b = readline.strip.split(/\s+/).map(&:to_i)

front = a + 1
back = n - b
initial_pos = [front, back].max
ways = [0, n - initial_pos + 1].max
puts ways

#
#          a=2
#          b=4
# ........ n=8
# aa
#     bbbb
#
