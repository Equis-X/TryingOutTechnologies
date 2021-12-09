/*        INIT VARS
  ---------------------------
  grids*/
int grid[10][10], old_grid[10][10];

/*        FUNCTIONS
  ---------------------------*/
void pr() { //Imprime subconjuntos
  for (int i = 0; i < 10; i++) {
    Serial.print(i);
    Serial.print("_");
  }
  Serial.print("\n");
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      switch (grid[i][j]) {
        case 1:
          Serial.print('*');
          break;
        default:
          Serial.print('-');
          break;
      }
      Serial.print(" ");
      if (j == 9) {
        Serial.print("| ");
        Serial.print(i);
      }
    }
    Serial.print("\n");
  }
  Serial.print("\n\n");
}

//Count Neighbors
int check_cell(int k, int l) {
  int neigh = 0;
  for (int i = -1; i < 2; i++) {
    for (int j = -1; j < 2; j++) {
      int o = (k + i + 10) % 10, p = (l + j + 10) % 10;
      /*if (o == 0) {
        o = 10;
        }
        if (p == 0) {
        p = 10;
        }*/
      neigh += old_grid[o][p];
    }
  }
  neigh -= old_grid[k][l];
  return neigh;
}

//Update grid based on the neighbors
void up_grid() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      old_grid[i][j] = grid[i][j];
    }
  }
  int neighbors = 0;
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      neighbors += check_cell(i, j);
      if (neighbors == 3) {
        grid[i][j] = 1;
      } else if (neighbors < 2 || neighbors > 3) {
        grid[i][j] = 0;
      } else if ((neighbors == 2) && (grid[i][j] == 1)) {
        grid[i][j] = 1;
      }
      neighbors = 0;
    }
  }
}

/*          MAIN
  ---------------------------*/
void setup() {
  randomSeed(analogRead(0));
  Serial.begin(9600);
  //Grid Generation
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      grid[i][j] = random(0, 2);
    }
  }
}

//Loop
void loop() {
  pr();
  delay(1000);
  up_grid();
}
