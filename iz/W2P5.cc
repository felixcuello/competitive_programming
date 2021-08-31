class Solution {
public:
    int numJewelsInStones(string jewels, string stones) {
        bitset<256> j(false);
        for(int i=0; i<jewels.length(); i++)
            j[jewels[i]] = true;
        
        int result = 0;
        for(int i=0; i<stones.length(); i++)
            if(j[stones[i]])
                result++;
        
        return result;
    }
};
