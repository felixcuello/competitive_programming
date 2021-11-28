def fow(x, n, mem)
  return 1 if n == 0
  return mem[n] if mem.key?(n)
  
  # puts "x=#{x} / n=#{n}"
  
  if n % 2 == 0
    mem[n] = fow(x, n/2, mem) * fow(x, n/2, mem)
  else
    mem[n] = x * fow(x, n-1, mem)
  end
end

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  if n < 0
    x = 1.0/x
    n *= -1
  end
  
  fow(x, n, {})
end
