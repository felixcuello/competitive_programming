# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  a = []
  while !head.nil?
    a << head.val
    head = head.next
  end

  i = 0
  j = a.count - 1
  while i < j
    return false if a[i] != a[j]
    i += 1
    j -= 1
  end

  true
end
