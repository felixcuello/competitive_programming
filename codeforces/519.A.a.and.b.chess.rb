VALUES = Hash.new(0)
VALUES['Q'] = 9
VALUES['R'] = 5
VALUES['B'] = 3
VALUES['N'] = 3
VALUES['P'] = 1
VALUES['q'] = 9
VALUES['r'] = 5
VALUES['b'] = 3
VALUES['n'] = 3
VALUES['p'] = 1

def count_pieces(l)
  whites = 0
  blacks = 0
  l.length.times do |i|
    if l[i].ord < 97
      whites += VALUES[l[i]]
    else
      blacks += VALUES[l[i]]
    end
  end

  [whites, blacks]
end

whites = 0
blacks = 0
8.times do
  line = readline.strip
  w, b = count_pieces(line)
  whites += w
  blacks += b
end

if whites > blacks
  puts 'White'
elsif blacks > whites
  puts 'Black'
else
  puts 'Draw'
end
