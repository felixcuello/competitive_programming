x, y = readline.strip.split(/\s+/).map(&:to_i)

sum = x.abs + y.abs

x1, y1, x2, y2 = if x >= 0 && y >= 0
                   [0, sum, sum, 0]
                 elsif x >= 0 && y < 0
                   [0, -sum, sum, 0]
                 elsif x < 0 && y >= 0
                   [-sum, 0, 0, sum]
                 elsif x < 0 && y < 0
                   [-sum, 0, 0, -sum]
                 end

puts "#{x1} #{y1} #{x2} #{y2}"
