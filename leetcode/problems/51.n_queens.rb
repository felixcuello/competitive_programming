# @param {Integer} n
# @return {String[][]}
def generate_board(n, current)
  board = []
  n.times { board << ('.' * n) }
  
  current.each do |c|
    board[c[0]][c[1]] = 'Q'
  end

  board
end

def n_queens(n, result, used, current = [], row = 0)
  if row == n
    result << generate_board(n, current)
    return
  end
  
  n.times do |col|
    next if used[:col][col] or used[:diag1][col + row] or used[:diag2][n - 1 - col + row]
    
    used[:col][col] = true
    used[:diag1][col + row] = true
    used[:diag2][n - 1 - col + row] = true
    current << [row,col]
    
    n_queens(n, result, used, current, row + 1)
    
    current.pop
    used[:col][col] = false
    used[:diag1][col + row] = false
    used[:diag2][n - 1 - col + row] = false
  end
end

def solve_n_queens(n)
  result = []
  used = {
    col: Array.new(20, false),
    diag1: Array.new(20, false),
    diag2: Array.new(20, false),
  }
  n_queens(n, result, used)
  result
end
