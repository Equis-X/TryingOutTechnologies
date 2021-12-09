#include <iostream>
using namespace std;

int valCheck(int val, int val1, int caso){
    switch (caso) {
    case 1:
        if (val+val1>7) { return val; }
        else { return val + val1; }
        break;
    default:
        if (val-val1<0) { return val; }
        else { return val - val1; }
        break;
    }
}

int main(){
    char tablero[8][8];
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            tablero[i][j] = '-';
        }
    }
    int filaR, columnaR, filaT1, columnaT1, filaT2, columnaT2;

    cout <<"Indique la fila de la Reina: ";
    cin >> filaR;
    filaR--;
    cout <<"Indique la columna de la Reina: ";
    cin >> columnaR;
    columnaR--;
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            tablero[valCheck(filaR,i,1)][valCheck(columnaR,i,1)] = 'J';
            tablero[valCheck(columnaR,i,0)][valCheck(columnaR,i,1)] = 'J';
            tablero[valCheck(columnaR,i,0)][valCheck(columnaR,i,0)] = 'J';
            tablero[valCheck(filaR,i,1)][valCheck(columnaR,i,0)] = 'J';
        }
    }
    
    cout <<"Indique la fila de la Torre 1: ";
    cin >> filaT1;
    filaT1--;
    cout <<"Indique la columna de la Torre 1: ";
    cin >> columnaT1;
    columnaT1--;
    tablero[filaT1][columnaT1] = 'T';
    cout <<"Indique la fila de la Torre 2: ";
    cin >> filaT2;
    filaT2--;
    cout <<"Indique la columna de la Torre 2: ";
    cin >> columnaT2;
    columnaT2--;
    tablero[filaT2][columnaT2] = 'T';

    for(int i = 0; i < 8; i++){
        tablero[i][columnaR] = 'J';
        if(i != filaR){
            if(i ==  filaT1 || i == filaT2)
                tablero[i][columnaR] = 'X';
        }
        tablero[filaR][i] = 'J';
        if(i != columnaR){
            if(i ==  columnaT1 || i == columnaT2)
                tablero[filaR][i] = 'X';
        }
    }

    tablero[filaR][columnaR] = 'R';
    for (int i = 0; i < 8; i++)
    {
        for(int j = 0; j < 8; j++){
            cout << tablero[j][i] << " ";
        }
        cout << "\n";
    }
    
    return 0;
}