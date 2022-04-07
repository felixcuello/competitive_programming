# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}

# 3 2 0 ||-4|| 2 0 -4 2 0 -4 2 0 -4
# 3 0 2 ||-4||


def hasCycle(head)
  slow = head
  fast = head
  while true
    break if slow.nil? || slow.next.nil?
    slow = slow.next
    
    break if fast.next.nil? || fast.next.next.nil?
    fast = fast.next.next
    
    return true if fast == slow
  end
  
  false
end
