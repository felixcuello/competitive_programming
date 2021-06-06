/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
      set<ListNode*> mem;

      ListNode* c = headA;
      while(c != NULL) {
        mem.insert(c);
        c = c->next;
      }

      c = headB;
      while(c != NULL) {
        set<ListNode*>::iterator found = mem.find(c);
        if(found != mem.end()) return *found;
        c = c->next;
      }

      return NULL;
    }
};
