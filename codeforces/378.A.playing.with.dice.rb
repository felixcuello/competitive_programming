a, b = readline.strip.split(/\s+/).map(&:to_i)

ga = 0
dr = 0
gb = 0
6.times do |d|
  d = d + 1
  if (a-d).abs < (b-d).abs
    ga += 1
  elsif (a-d).abs == (b-d).abs
    dr += 1
  else
    gb += 1
  end
end

puts "#{ga} #{dr} #{gb}"
