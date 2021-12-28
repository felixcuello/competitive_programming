n,m = readline.strip.split(/\s+/).map(&:to_i)

result = 0
n.times do
  windows = readline.strip.split(/\s+/)
  i = 0
  while i < windows.count
    result += 1 if windows[i] == '1' || windows[i+1] == '1'
    i += 2
  end
end
puts result
