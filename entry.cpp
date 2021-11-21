#include "common.h"
#include "checkCycle.h"
#include "digraphpr.h"  
#include "kosa.h"
// 如果是CMakeLists.txt通过.so库来链接到 kosa ，这里是不是不用include了？(答：还是需要的(digraphpr.h和common.h可以不用，因为其他头文件中包含了他))
// 但是为了防止这些包含了digraphpr.h和common.h的头文件中某一天把他俩删了，所以这里也需要include进来（不必担心重复包含，头文件中 #ifndef 就是为了解决重复包含的问题）

int main(int argc, char *argv[]){
    cout << "running CMakeLists.txt practice program." << endl;
    cout << "digraph file path: " << argv[1] << endl;
    ifstream file(argv[1]);
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