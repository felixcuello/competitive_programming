
SIZE = 1000000
sieve = Array.new(SIZE+1, true)

sieve[0] = false
sieve[1] = false

SIZE.times do |i|
  if sieve[i]
    k = i+i
    while k <= SIZE
      sieve[k] = false
      k += i
    end
  end
end

SIZE.times do |i|
  if sieve[i]
    puts "Prime: #{i}"
  end
end
