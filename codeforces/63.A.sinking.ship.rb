map = {
  'rat' => 0,
  'woman' => 1,
  'child' => 1,
  'man' => 2,
  'captain' => 3
}

n = readline.to_i

result = []
n.times do
  name, pos = readline.strip.split(/\s+/)

  result[map[pos]] ||= []
  result[map[pos]] << name
end

result.each do |l|
  next if l.nil?
  l.each do |p|
    puts p
  end
end
