GraphPlotter GP;

float[] DataArray;

void setup() {
  size(1900, 900);
  
  GP = new GraphPlotter();
  GP.GraphSetup(false, true, "", "");
  GP.GridSetup(log(1), log(50), 1, 0, 50, 10);
  GP.totalPoints *= 1;
  GP.SizeSetup(width, height);
  
  DataArray = new float[GP.totalPoints];
  
  fillData();
}

void draw() {
  GP.fillBackground(color(255));
  GP.DrawGraph(DataArray, color(0, 0, 128));
  GP.DrawGrid();
}

void fillData() {
  for(int i = 0; i < GP.totalPoints; i++) {
    DataArray[i] = log(GP.x(i));
  }
}
