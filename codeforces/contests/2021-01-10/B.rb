t = readline.strip.to_i

t.times do
  a, b, c = readline.strip.split(/\s+/).map(&:to_i)
  if a == b && b == c
    puts 'YES'
    next
  end

  # case 1 |a| b c
  d = c - b
  if ((b - d) % a == 0) && ((c - 2*d) % a == 0)
    m = (b-d) / a
    if m > 0
      puts 'YES'
      next
    end
  end

  # case a |b| c
  d = c - a
  if d % 2 == 0
    d /= 2
    if ((a+d) % b == 0) && ((c-d) % b == 0)
      m = (a+d) / b
      if m > 0
        puts 'YES'
        next
      end
    end
  end

  # case a b |c|
  d = b - a
  if ((b+d) % c == 0) && ((a+2*d) % c == 0)
    m = (b + d) / c
    if m > 0
      puts 'YES'
      next
    end
  end

  puts 'NO'
end

