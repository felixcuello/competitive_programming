class Solution {
public:
    int numJewelsInStones(string jewels, string stones) {
        set<char> j;

        int jl = jewels.length();
        for(int i=0; i<jl; i++)
            j.insert(jewels[i]);

        int result = 0;
        int sn = stones.length();

        for(int i=0; i<sn; i++)
            if(j.find(stones[i]) != j.end())
                result++;

        return result;
    }
};
