#include <bits/stdc++.h>

using namespace std;

struct node {
    node* left;
    node* right;
    int val;
};

node* newNode(int val) {
    node* x = (node*)malloc(sizeof(node));
    x->val = val;
    return x;
}

int main() {
    node* root  = newNode(1);
    root->left  = newNode(2);
    root->right = newNode(3);
    root->left->left  = newNode(4);
    root->left->right = newNode(5);
    root->right->left = newNode(6);
    root->right->right = newNode(7);

    /*
    **                   1
    **                 /   \
    **                2     3
    **               / \   / \
    **              4   5 6   7
    */

    queue<node*> q;
    q.push(root);
    while(!q.empty()) {
        cout << q.front()->val << ' ';
        node* c = q.front();
        q.pop();
        if(c->left != NULL) q.push(c->left);
        if(c->right != NULL) q.push(c->right);
    }
    cout << endl;

    return 0;
}
