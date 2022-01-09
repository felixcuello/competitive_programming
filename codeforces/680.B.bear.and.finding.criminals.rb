n, a = readline.strip.split(/\s+/).map(&:to_i)
t = readline.strip.split(/\s+/).map(&:to_i)

i = a - 1
j = a - 1

result = 0

while i >= 0 && j < n
  if i == j 
    result += 1 if t[i] == 1 && t[j] == 1
  else
    result += 2 if t[i] == 1 && t[j] == 1
  end

  i -= 1
  j += 1
end

while i >= 0
  result += 1 if t[i] == 1
  i -= 1
end

while j < n
  result += 1 if t[j] == 1
  j += 1
end

puts result
