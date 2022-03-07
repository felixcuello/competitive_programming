# this can be improved by using bitmasks

def permutation(s, current = '')
  @used ||= Array.new(s.length, false)

  if s.length == current.length
    puts current
    return
  end

  s.length.times do |i|
    next if @used[i]

    @used[i] = true
    permutation(s, current + s[i])
    @used[i] = false
  end
end


permutation('fefe')
