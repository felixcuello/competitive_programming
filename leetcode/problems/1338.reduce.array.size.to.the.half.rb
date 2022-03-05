def min_set_size(arr)
  freq = arr.each_with_object(Hash.new(0)) { |e, f| f[e] += 1 }
  
  a = []
  freq.each do |k, v|
    a << [v, k]
  end
  a = a.sort.reverse
  
  count = arr.count
  result = 0
  a.each do |e|
    break if count+count <= arr.count
    result += 1
    count -= e[0]
  end
  result
end
