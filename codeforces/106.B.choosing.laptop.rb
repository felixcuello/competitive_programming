require 'set'

n = readline.strip.to_i

def make_key(v)
  [v[0], v[1], v[2]]
end

@compus = []
n.times do |i|
  speed, ram, hdd, cost = readline.strip.split(/\s+/).map(&:to_i)
  @compus << [speed, ram, hdd, cost]
end

outdated = Set.new
@compus.count.times do |i|
  @compus.count.times do |j|
    if @compus[i][0] < @compus[j][0] && @compus[i][1] < @compus[j][1] && @compus[i][2] < @compus[j][2]
      outdated.add(make_key(@compus[i]))
    end
  end
end

cheapest_pos = 0
cheapest = 1001
@compus.each_with_index do |e, i|
  next if outdated.member?(make_key(e))

  if e[3] < cheapest
    cheapest = e[3]
    cheapest_pos = i
  end
end

puts cheapest_pos + 1
