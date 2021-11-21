#include <iostream>
#include <fstream>
#include <map>
#include <set>
#include <vector>
#include <queue>
#include <stack>
#include <algorithm>

using namespace std;

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


int main(){
    ifstream file("/home/tanweimin/code/program_practice/ALGORITHM/sort/graphpr.txt");
    digraphpr dg(file);
    dg.show();

    checkCycle cc(dg);
    if(cc.hasCycle()){
        cout << "ohoh" << endl;
        stack<int> cycle = cc.getCycle();
        while(!cycle.empty()){
            cout << cycle.top() << " ";
            cycle.pop();
        }
        cout << endl;
    } 
    kosa ks(dg);
    ks.show();


    return 0;
}