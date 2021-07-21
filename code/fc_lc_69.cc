class Solution {
public:
    int mySqrt(int x) {
      unsigned int result = 1;
      while(result * result <= x)
        result += 1;

      return result - 1;
    }
};
