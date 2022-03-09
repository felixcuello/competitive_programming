# In order to solve the n-queens probelm
#
# col               diag1                   diag3
# 0 1 2 3           0 1 2 3                 3 2 1 0
# 0 1 2 3           1 2 3 4                 4 3 2 1
# 0 1 2 3           2 3 4 5                 5 4 3 2
# 0 1 2 3           3 4 5 6                 6 5 4 3
# used[:col][col]     used[:diag1][col + row]     used[:diag2][n - 1 - col + row]

require 'set'

def generate_board(n, current)
  puts ''
  n.times do |row|
    n.times do |col|
      print current.member?([row, col]) ? 'Q' : '.'
    end
    puts ''
  end
  puts ''
end

def n_queens(n, used = { col: 0, diag1: 0, diag2: 0 }, col = 0, row = 0, current = Set.new)
  if n == row
    generate_board(n, current)
    return
  end

  n.times do |col|
    # This checks if the previous queens are not attacking columns or diagonals
    next if (used[:col] & (1 << col) > 0) || (used[:diag1] & (1 << (col + row)) > 0) || (used[:diag2] & (1 << (n - 1 - col + row))  > 0)

    used[:col] |= (1 << col)
    used[:diag1] |= (1 << col + row)
    used[:diag2] |= (1 << n - 1 - col + row)

    current.add([row, col])
    n_queens(n, used, col, row + 1, current)
    current.delete([row, col])

    used[:col] &= ~(1 << col)
    used[:diag1] &= ~(1 << col + row)
    used[:diag2] &= ~(1 << n - 1 - col + row)
  end
end

n_queens(5)
