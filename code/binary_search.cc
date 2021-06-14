#include <vector>
#include <iostream>

using namespace std;

bool bs_helper(vector<int> v, int t, int l, int u) {
    int mid = ((u-l) / 2) + l;

    if(l > u) return false;
    if(v[mid] == t) return true;

    if(t < v[mid])
        return bs_helper(v, t, l, mid-1);
    else
        return bs_helper(v, t, mid+1, u);
}

bool binary_search(vector<int>& v, int t) {
    return bs_helper(v, t, 0, v.size()-1);
}

int main() {
    vector<int> x = {1,5,6,9,10,12,15,20,30,31,33};

    cout << "Encontrado? " << binary_search(x, 0) << endl;
    return 0;
}
