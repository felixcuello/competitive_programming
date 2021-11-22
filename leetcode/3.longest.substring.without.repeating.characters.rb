# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return s.length if s.length < 2

  i = 0
  j = 1

  result = 1
  se = Set.new([s[i]])
  while j < s.length
    while se.member?(s[j])
      se.delete(s[i])
      i += 1
    end

    se.add(s[j])

    j += 1
    result = se.count if result < se.count
  end

  result
end
#  La idea es usar dos punteros que armen una ventana
# p w w k e w
# i
#     j
#
#  Mientras se puede vas agrandando la ventana y te quedás
# con la ventana más grande vista. Cuando se repite un número
# achicás la ventana buscando que se deje de repetir
