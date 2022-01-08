readline

min = 0
current = 0
readline.strip.split(/\s+/).each do |e|
  e = e.to_i
  current += e
  min = [min, current].min
end

puts -min
