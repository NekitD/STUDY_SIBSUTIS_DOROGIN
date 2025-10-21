#include <iostream>

using std::cout;
using std::cin;
using std::endl;


int surv(int mana, int* M, int n){
    for(int i = 0; i < n; i++){
        mana += M[i];
        if(mana < 0) return false;
    }
    return true;
}


int main(){
    int n = 0;
    cin >> n;
    int M[n];
    for(int i = 0; i < n; i++){
        cin >> M[i];
    }
    cout << endl;
    int m = 0;
    while(!surv(m, M, n)){
        m++;
    }
    cout << m;
    return 0;
}