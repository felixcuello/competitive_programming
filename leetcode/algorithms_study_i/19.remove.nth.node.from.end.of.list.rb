# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  c = 0
  current = head
  while !current.nil?
    current = current.next
    c += 1
  end
  
  i = 1
  c -= n
  current = head
  prev = current
  
  while i <= c
    prev = current
    current = current.next
    i += 1
  end
  
  if c.zero?
    head = head.next
  else
    prev.next = current.next
  end
  
  head
end
