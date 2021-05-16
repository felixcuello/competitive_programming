class Solution {
public:
    int numJewelsInStones(string jewels, string stones) {
        bitset<255> j;
        int jl = jewels.length();
        for(int i=0; i<jl; i++)
            j[jewels[i]] = true;

        int result = 0;
        int sl = stones.length();
        for(int i=0; i<sl; i++)
            if(j[stones[i]])
                result++;

        return result;
    }
}
