# @param {Integer[][]} matrix
# @return {Integer}
def count_squares(matrix)
  rows = matrix.count
  cols = matrix[0].count
  
  result = 0
  rows.times do |row|
    cols.times do |col|
      if (row-1 < 0) || (col-1 < 0)
        result += matrix[row][col]
        next
      end
      next if matrix[row][col] == 0
      
      matrix[row][col] = 1 + [
        matrix[row-1][col],
        matrix[row][col-1],
        matrix[row-1][col-1]
      ].min
      
      result += matrix[row][col]
    end
  end
  
  result
end
