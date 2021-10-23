
n = readline.chomp.to_i
prime = []
exp = []

k = 2
while n > 1
  if n % k == 0
    x = 0
    prime.push(k)
    while n % k == 0
      n /= k
      x += 1
    end
    exp.push(x)
  end
  k += 1
end

prime.count.times do |i|
  puts "#{prime[i]}  #{exp[i]}"
end
