r1, r2 = readline.strip.split(/\s+/).map(&:to_i)
c1, c2 = readline.strip.split(/\s+/).map(&:to_i)
d1, d2 = readline.strip.split(/\s+/).map(&:to_i)

# a b
# c d
(1..9).each do |a|
  (1..9).each do |b|
    next if b == a
    (1..9).each do |c|
      next if c == b || c == a
      (1..9).each do |d|
        next if d == a || d == b || d == c
        if r1 == a+b && r2 == c+d && c1 == a+c && c2 == b+d && d1 == a+d && d2 == b+c
          puts "#{a} #{b}"
          puts "#{c} #{d}"
          exit
        end 
      end
    end
  end
end

puts -1
