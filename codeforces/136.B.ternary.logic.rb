a, c = readline.strip.split(/\s+/).map do |i|
  i.to_i.to_s(3).split('')
end

if a.count > c.count
  c = Array.new(a.count - c.count, '0') + c
else
  a = Array.new(c.count - a.count, '0') + a
end

translate = {
  ['0','0'] => '0',
  ['1','0'] => '2',
  ['2','0'] => '1',
  ['0','1'] => '1',
  ['1','1'] => '0',
  ['2','1'] => '2',
  ['0','2'] => '2',
  ['1','2'] => '1',
  ['2','2'] => '0',
}

result = ''
a.count.times do |i|
  result << translate[[a[i], c[i]]]
end

puts result.to_i(3)
