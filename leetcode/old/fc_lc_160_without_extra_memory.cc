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

      ListNode* i = headA;
      bool si = false;
      ListNode* j = headB;
      bool sj = false;

      while(j != i) {
        if(si == true && i == NULL) break;
        if(sj == true && j == NULL) break;

        if(si == false && i == NULL) {
          si = true;
          i = headB;
        } else {
          i = i->next;
        }

        if(sj == false && j == NULL) {
          sj = true;
          j = headA;
        } else {
          j = j->next;
        }
      }

      return i==j ? i : NULL;
    }
};
