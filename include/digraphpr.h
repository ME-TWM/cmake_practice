#include "common.h"

#ifndef __DIGRAPHPR_H__
#define __DIGRAPHPR_H__

class digraphpr
{
private:
    map<int, set<int>> adj;
    set<int> allv;
    int V;
    int E;
public:
    digraphpr():V(0),E(0){}  // 初始化列表和直接在上面声明时直接初始化有什么不同?
    digraphpr(ifstream &in);
    bool addEdge(int v, int w);
    digraphpr reverse();
    set<int> getAllv();
    set<int> getadj(int v);
    void show();
    ~digraphpr(){}
};

#endif