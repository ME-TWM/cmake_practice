#include "depthFirstOrder.h"

depthFirstOrder::depthFirstOrder(digraphpr dg):dg(dg){
    set<int> allv = dg.getAllv();
    vector<bool> temp(allv.size(), false);
    swap(marked, temp);
    for(auto &v : allv){
        //if(id.end() == id.find(v)){
        if(!marked[v]){
            dfs(v);
            //count++;
        }
    }
}

void depthFirstOrder::dfs(int v){
    //id[v] = count;
    marked[v] = true;
    pre.push(v);
    set<int> adjv = dg.getadj(v);
    for(auto &w : adjv){
        //if(id.end() == id.find(w))
        if(!marked[w])
            dfs(w);
    }
    post.push(v);
    rePost.push(v);
}

stack<int> depthFirstOrder::getOrder(){
    return rePost;
}