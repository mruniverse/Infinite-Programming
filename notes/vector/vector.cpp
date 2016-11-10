#include <iostream>
#include <vector>

using namespace std;

int main(){
  vector<int> v;
  int i = 0;
  int valor;

  while(true){
    cout << "insira um valor: " << endl;
    cin >> valor;
    v.push_back(valor);
    cout << v.size() << endl;
    i++;
  }

  return 0;
}
