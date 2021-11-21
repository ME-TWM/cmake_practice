#include "common.h"
#include "digraphpr.h"
#include "depthFirstOrder.h"

#ifndef __KOSA_H__
#define __KOSA_H__

class kosa{
    private:
        digraphpr dg;
        depthFirstOrder dfo;
        vector<bool> marked;
        map<int, int>id;
        int count = 0;
    public:
        kosa(digraphpr dg);
        void dfs(int v);
        bool isStronglyConnected(int v, int w){return id[v] == id[w];}
        void show();
        ~kosa(){}
};

#endif