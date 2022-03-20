# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  seen = { 1 => true, 2 => false }
  while true
    n = n.to_s.split('').map { |i| i.to_i**2 }.sum
    return seen[n] if seen.key?(n)
    seen[n] = false unless seen.key?(n)
  end
end
