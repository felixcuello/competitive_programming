n,k = readline.strip.split(/\s+/).map(&:to_i)

def distance(a,b,c,d)
  x1, x2 = a > c ? [c, a] : [a, c]
  y1, y2 = b > d ? [d, b] : [b, d]
  Math.sqrt( (x2-x1)*(x2-x1) + (y2 - y1)*(y2-y1) )
end

result = 0.0
a,b = readline.strip.split(/\s+/).map(&:to_i)
(n-1).times do
  c,d = readline.strip.split(/\s+/).map(&:to_i)
  result += distance(a,b,c,d)
  a,b = [c,d]
end

puts k * result / 50.0

