class Rectangle {
    int width, height;
  public:
    Rectangle (int a,int b) {height = a; width = b;}
    // getters
    int get_height() {return height;}
    int get_width() {return width;}
    // setters
    void set_height(int a) {height = a;}
    void set_width(int a) {width = a;}
    // functions//methods
    int area() {return width*height;}
};
// void Rectangle::set_values (int x, int y) {
//   width = x;
//   height = y;
// }

Rectangle rect(10,10);

void setup() {
  Serial.begin(9600);
  Serial.print(rect.get_height());
}

void loop() {
}