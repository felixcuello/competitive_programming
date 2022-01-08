readline

chest = 0
biceps = 0
back = 0

map = {0 => 'chest', 1 => 'biceps', 2 => 'back'}

readline.strip.split(/\s/).each_with_index do |e, i|
  e = e.to_i
  chest += e if i % 3 == 0
  biceps += e if i % 3 == 1
  back += e if i % 3 == 2
end

a = [chest, biceps, back]
puts map[a.index(a.max)]
