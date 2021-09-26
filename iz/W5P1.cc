class Solution {
public:
    int romanToInt(string s) {
        map<char, int> trans;
        trans['I'] = 1;
        trans['V'] = 5;
        trans['X'] = 10;
        trans['L'] = 50;
        trans['C'] = 100;
        trans['D'] = 500;
        trans['M'] = 1000;

        int sum = 0;
        int last = 0;
        int ss = s.size();
        for(int i=ss-1; i>=0; i--) {
            int curr = trans[s[i]];
            sum += (curr >= last) ? curr : -curr;
            last = curr;
        }

        return sum;
    }
}
