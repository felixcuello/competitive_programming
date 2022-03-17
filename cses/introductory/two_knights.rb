# This problem is introductory, but I found it difficult
#
# (1st) we need to count the number of ways you can put 2 knigths in a board
#       This was the first problem. because I forgot about combinatorics, but
#       it is not that difficult to see that it's:
#       (n**2) * (n**2 - 1) / 2
#          ^         ^        ^
#          |         |        |__ knights are indistinguishable between them
#          |         |
#          |         |___________ after you put a knight anywhere in the board
#          |                      you can use all but ONE position
#          |
#          |_____________________ you can pick any position from the board
#
#
#       Also I think it can be done using the combinatoric number (n,2)
#       so if n == 4:
#
#                             n!
#                       ---------------
#                         2! * (n-2)!
#
#
#
# (2nd) This is the most difficult part to get, but you have to count the number
#       of ways two knights can attack each other, and this is surprisingly clever.
#       You have ONLY to count areas, because for example in a 4x4 board:
#       
#       A     B
#       ++..  +++.  To count this, you have to considere these areas. Because that
#       ++..  +++.  are the only areas where two knights can attack each other.
#       ++..  ....  In these areas there are only TWO ways two knights can attack
#       ....  ....  each other.
#
#       So you have to count how many areas like this are in an  (n x n)  board.
#
#       If you take a closer look there are (n-1) * (n-2) horizontal areas
#       and (n-2) * (n-1) vertical areas. So , let's take a look how:
#
#       11..  .22.   ..33   ....  ....  ....
#       11..  .22.   ..33   44..  .55.  ..66    (4-1) * (4-2) = 3 * 2 = 6
#       11..  .22.   ..33   44..  .55.  ..66
#       ....  ....   ....   44..  .55.  ..66
#
#       The same happens for the horizontal lines, so it's 6 too.
#
#       For each area the knights can attack in 2 different ways:
#
#       k.      .k
#       ..  or  ..
#       .k      k.
#
#       So the numbers of ways you can attack each others are:
#
#       (n-1)*(n-2)*2 + (n-2)*(n-1)*2 == 4 * (n-1) * (n-2)
#
#
n = readline.strip.to_i
n.times do |k|
  k += 1
  all = k**2 * (k**2-1) / 2
  attacked = 4 * (k-1) * (k-2)
  puts all - attacked
end
