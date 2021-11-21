#include "digraphpr.h"
#include "common.h"

#ifndef __DEPTHFIRSTORDER_H__
#define __DEPTHFIRSTORDER_H__

class depthFirstOrder
{
private:
    digraphpr dg;
    //map<int, int> id;   // id这个变量只用于无向图标识同一联通分量和有向图中强连通分量时才会用到（count这个变量同理）
    queue<int> pre;
    queue<int> post;
    stack<int> rePost;
    vector<bool> marked;
    //int count = 0;
public:
    depthFirstOrder(digraphpr dg);
    bool isDAG();
    void dfs(int v);
    stack<int> getOrder();
    ~depthFirstOrder(){}
};

#endif