require 'set'

t = readline.strip.to_i
t.times do
  readline
  a = readline.strip.split(/\s+/).map(&:to_i)
  s = Set.new((1..a.count).to_a)
  a.each do |e|
    while e > 0
      if s.member?(e)
        s.delete(e)
        break
      end

      e /= 2
    end
  end

  puts s.count == 0 ? 'YES' : 'NO'
end
