#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>

using namespace std;

int main(){
    int code; //Entry postal code
    int ref1,ref2,ref3; //Referencials of ";"
    int code1,code2; //Exit postal codes
    string aux;
    string aux1,aux2;
    string line;

    cout << "Inform the Postal Code: ";
    cin >> code;

    fstream archive;
    archive.open ("cidades.csv", ios::in);

    while(archive.good()){
        getline(archive, line);
        ref1 = line.find(';');
        for(int i = ref1; i < line.length(); i++){
            if(line[i] == ';'){
                ref3 = i;
            }
        }

        aux = line.substr(ref1 + 1,ref3 - ref1 - 1);
        ref2 = aux.find(';');
        aux1 = aux.substr(0,ref2);
        aux2 = aux.substr(ref2 + 1, aux.length());

        code1 = stoi(aux1);
        code2 = stoi(aux2);

        string city = line.substr(0,ref1);
        string initials = line.substr(ref3 + 1, line.length());

        if(code >= code1 && code <= code2){
            printf("%s,%s\n",city.c_str(),initials.c_str());
            break;
        }
    }

    archive.close();
}
