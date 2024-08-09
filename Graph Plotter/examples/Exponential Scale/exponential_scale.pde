GraphPlotter GP;

float[] DataArray;

void setup() {
  size(1900, 900);
  
  GP = new GraphPlotter();
  GP.GraphSetup(false, true, "", "");
  GP.GridSetup(0, 100, 10, 0, 5, 1);
  GP.totalPoints *= 10;
  GP.SizeSetup(width, height);
  GP.scale = "lnx";
  
  DataArray = new float[GP.totalPoints];
  
  fillData();
}

void draw() {
  GP.fillBackground(color(255));
  //GP.DrawGraph(DataArray, color(0, 120, 198));
  GP.DrawGrid();
}

void fillData() {
  for(int i = 0; i < GP.totalPoints; i++) {
    DataArray[i] = GP.x(i);
    if(DataArray[i] == 0) {
      DataArray[1] = 10;
    }
  }
}
