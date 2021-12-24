# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  result = Array.new(row_index+2, 0)
  result[1] = 1
  1.upto(row_index) do |row|
    row.downto(1) do |col|
      result[col+1] = result[col+1] + result[col]
    end
  end
  result[1..row_index+1]
end

