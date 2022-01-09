/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution { // recursive
public:
  ListNode* reverse(ListNode* prev, ListNode* curr) {
    ListNode* result = NULL;
    if(curr->next == NULL) { // last element
      result = curr;
      curr->next = prev;
      return result;
    } else {
      ListNode* temp = reverse(curr, curr->next);
      curr->next = prev;
      return temp;
    }
  }

    ListNode* reverseList(ListNode* head) {
      if(head == NULL)
        return NULL;
      return reverse(NULL, head);
    }
};
