#include "checkCycle.h"

checkCycle::checkCycle(digraphpr dg):dg(dg){
    set<int> allv = dg.getAllv();
    vector<bool> temp(allv.size(), false);
    swap(marked, temp);
    for(auto &item : allv){
        if(!marked[item]){
            //cout << "get v: " << item << endl;
            dfs(item);
        }
    }
}

void checkCycle::dfs(int v){
    marked[v] = true;
    onStack.push_back(v);
    //cout << "get adj v: " << v << endl;
    set<int> adjv = dg.getadj(v);
    for(auto &w : adjv){
        if(hasCycle()){
            cout << "wanduzi" << endl;
            return;
        }
            
        else if(!marked[w]){
            dfs(w);
        }
        else if(onStack.end() != find(onStack.begin(), onStack.end(),w)){  // 如果onstack用 stack 来表示，就没有办法查一个元素是否在stack里面
            auto iter = find(onStack.begin(), onStack.end(),w);   // 但是如果直接把深度查找过的元素保存到 onStack 里面的话，这里就得再重新查找一遍，所以书中使用另一个变量 edgeTo 来保存元素而onstack只表示true或false
            for_each(iter, onStack.end(), [this](const int &item){this->cycle.push(item);});
            cycle.push(w);
        }
    }
    onStack.pop_back();
}

stack<int> checkCycle::getCycle(){
    return cycle;
}