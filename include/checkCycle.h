#include "digraphpr.h"
#include "common.h"

#ifndef __CHECKCYCLE_H__
#define __CHECKCYCLE_H__

class checkCycle{
    private:
        digraphpr dg;
        vector<int> onStack;
        vector<bool> marked;
        stack<int> cycle;
    public:
        checkCycle(digraphpr dg);
        void dfs(int v);
        bool hasCycle(){return !cycle.empty();}
        stack<int> getCycle();
        ~checkCycle(){}
};

#endif