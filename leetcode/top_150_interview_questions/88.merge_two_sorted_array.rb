#
# PROBLEM
# 88 | https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150
#
# IDEA
# 1. TIME: O((n+m) * log(n+m)) | SPACE: O(n+m)
#    Combine the two arrays together in a new array and re-sort the array
#
# 2. TIME: O(n+m) | SPACE: O(n+m)
#    Use three pointers, i, j and t where t is the target index in the merged array
# 
# FOLLOW UP
# Can you come up with an algorithm that runs in O(m + n) time?
#
def merge(nums1, m, nums2, n)
  t = m + n - 1
  i = m - 1
  j = n - 1

  while t >= 0
    if j < 0
      nums1[t] = nums1[i]
      i -= 1
    elsif i < 0
      nums1[t] = nums2[j]
      j -= 1
    elsif nums1[i] >= nums2[j]
      nums1[t] = nums1[i]
      i -= 1
    else
      nums1[t] = nums2[j]
      j -= 1
    end
    t -= 1
  end
end
