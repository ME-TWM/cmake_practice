#include "digraphpr.h"

digraphpr::digraphpr(ifstream &in)
{
    int v, w;
    while (in >> v >> w)
    {
        addEdge(v, w);
    }
}

bool digraphpr::addEdge(int v, int w){
    bool res;
    auto iter = adj.find(v);
    if(iter != adj.end()){
        res = iter->second.insert(w).second;
    }
    else
        res = adj.insert(make_pair(v, set<int>{w})).second;
    if(!res)
        return res;
    E++;
    if(allv.insert(v).second)V++;
    if(allv.insert(w).second)V++;
    return res;
}

set<int> digraphpr::getadj(int v){
    return adj[v];
}

digraphpr digraphpr::reverse(){
    digraphpr re;
    for(auto &item : adj){
        for(auto &w : item.second){
            re.addEdge(w, item.first);
        }
    }
    cout << "re: " << endl;
    re.show();

    return re;
}

set<int> digraphpr::getAllv(){
    return allv;
}

void digraphpr::show(){
    for_each(adj.begin(), adj.end(), 
    [](const pair<int, set<int>> &item){cout << "v: " << item.first << endl; for(auto &w : item.second)cout << w << " ";cout << endl;});
}