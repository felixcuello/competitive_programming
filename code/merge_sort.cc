#include <iostream>
#include <vector>

using namespace std;

class Solution {
    public:
        vector<int> merge_sort(vector<int>& v) {
            vector<int> ordenado;
            return dac(v);
        }

        vector<int> dac(vector<int>& v) {
            int n = v.size() - 1;

            if(n < 0) return {};
            if(n == 0) return {v[n]};
            if(n == 1) {
                if(v[0] <= v[1])
                    return {v[0], v[1]};
                else
                    return {v[1], v[0]};
            }

            int m = n / 2;
            vector<int> left;
            for(int i=0; i<=m; i++)
                left.push_back(v[i]);
            vector<int> left_o = dac(left);

            vector<int> right = {};
            for(int i=m+1; i<=n; i++)
              right.push_back(v[i]);
            vector<int> right_o = dac(right);

            int i=0;
            int j=0;
            vector<int> result;
            while(i<left_o.size() || j<right_o.size()) {
                if(i < left_o.size() && j < right_o.size()) {
                    if(left_o[i] <= right_o[j]) {
                        result.push_back(left_o[i]);
                        i++;
                    } else {
                        result.push_back(right_o[j]);
                        j++;
                    }
                    continue;
                }

                if(i < left_o.size()) {
                    result.push_back(left_o[i]);
                    i++;
                }

                if(j < right_o.size()) {
                    result.push_back(right_o[j]);
                    j++;
                }
            }

            return result;
        }
};


int main() {
    vector<int> desordenado = {134,12,5,-1,-2,-431,3,21,23,123,35,4,56,3465,345,234,13,1};
    //for(int i=100000; i>=0; i--) desordenado.push_back(i);

    Solution* s = new Solution();

    vector<int> ordenado = s->merge_sort(desordenado);
    for(auto i : ordenado) {cout << i << endl;}
}
