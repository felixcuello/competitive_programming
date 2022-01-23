# This is O(2n), I am sure there's a O(n) solution

def middle_node(head)
  current = head
  c = 1
  until current.nil?
    c += 1
    current = current.next
  end
  
  current = head
  i = 1
  while i+i < c
    current = current.next
    i += 1
  end
  
  current
end
