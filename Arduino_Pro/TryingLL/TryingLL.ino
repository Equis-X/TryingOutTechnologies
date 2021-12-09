//Struct node
struct node {
    int val;
    struct node *nxt;
    node(int a){
      val = a;
      nxt = nullptr;
    }
};

//Class LinkedList
class LL{
  node *head, *tail;
  public:
    LL(){
      head = nullptr;
      tail = nullptr;
    }
    // add
    void Add_N(int a){
      node *temp = new node(a);
      if (head == nullptr) {
        head = temp;
        tail = temp;
      } else {
        tail->nxt = temp;
        tail = temp;
      }
    }
};

void setup() {
  Serial.begin(9600);
  Serial.print(" ");
}

void loop() {
}