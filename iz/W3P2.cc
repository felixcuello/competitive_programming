class Solution {
public:
    bool isValid(string s) {
        map<char, char> c;
        c[')'] = '(';
        c[']'] = '[';
        c['}'] = '{';
        
        vector<char> stack;
        
        for(int i=0; i<s.size(); i++) {
            char x = s[i];
            if(x == '{' || x == '(' || x == '[')
                stack.push_back(x);
            else {
                if(stack.size() == 0)
                    return false;

                char p = stack.back();
                stack.pop_back();
                
                if(p != c[x])
                    return false;
            }
        }
        
        return stack.size() == 0;
    }
};
