t = readline.strip.to_i

def calc_min(l, x)
  result = 0
  l.times do |p|
    os = 0
    is = 0

    x.map! do |xi|
      os += xi % 2 == 0 ? 1 : 0
      is += xi % 2 == 0 ? 0 : 1
      xi /= 2
    end

    result += (os >= is ? 0 : 1) * (2**p)
  end

  result
end

t.times do
  n, l = readline.strip.split(/\s+/).map(&:to_i)
  x = readline.strip.split(/\s+/).map(&:to_i)
  puts calc_min(l,x)
end
