#include "kosa.h"

kosa::kosa(digraphpr _dg):dg(_dg),dfo(_dg.reverse()){
    vector<bool> temp(dg.getAllv().size(), false);
    swap(marked, temp);
    stack<int> reverse = dfo.getOrder();
    while(!reverse.empty()){
        if(!marked[reverse.top()]){
            dfs(reverse.top());
            count++;
        }
        reverse.pop();
    }
};

void kosa::dfs(int v){
    id[v] = count;
    marked[v] = true;
    set<int> adjv = dg.getadj(v);
    for(auto &w : adjv){
        if(!marked[w])
            dfs(w);
    }
}

void kosa::show(){
    for(auto &item : id){
        cout << item.first << "  " << item.second << endl;
    }
}
