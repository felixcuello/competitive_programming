readline # ignore the first part

k, m = readline.strip.split(/\s+/).map(&:to_i)

a = readline.strip.split(/\s+/).map(&:to_i)
b = readline.strip.split(/\s+/).map(&:to_i)

last_a = a[k - 1]
first_b = b[b.count - m]

puts last_a < first_b ? 'YES' : 'NO'
