t = readline.strip.to_i

t.times do
  readline # n
  a = readline.strip.split(/\s+/).map(&:to_i)

  # count frequencies
  fq = Hash.new(0)
  pos = {}
  possible = false
  candidates = []
  a.each_with_index do |e, i|
    fq[e] += 1
    if fq[e] > 1
      possible = true
      candidates << e
    end

    pos[e] ||= []
    pos[e] << i
  end

  # it's impossible if all elements are equal
  unless possible
    puts '-1'
    next
  end

  # find candidate
  winner_pos = -1
  winner_length = -1
  candidates.each do |candidate|
    if pos[candidate][0] > winner_pos
      winner_pos = pos[candidate][0]
      winner_length = winner_pos + (a.count - pos[candidate][1])
    end
  end

  puts winner_length
end
