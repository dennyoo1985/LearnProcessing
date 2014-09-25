int[] data;


void setup() {
  size(200, 200);
  Table table = loadTable("RhobInput.csv");
  String[] x = table.getStringColumn(0);
  String[] y = table.getStringColumn(1);
}

void draw() {
   
  
  //ellipse(x, y, 10, 10);
}
