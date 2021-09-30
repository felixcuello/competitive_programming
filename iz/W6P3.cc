class Solution {
public:
    int hammingDistance(int x, int y) {
        int result = 0;
        while(x || y) {
            if((x%2) != (y%2))
                result++;
            if(x) x /= 2;
            if(y) y /= 2;
        }
        return result;
    }
};
