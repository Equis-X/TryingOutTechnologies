#include <iostream> //For cout
using namespace std;

//ClassNode
class node
{
    public:
        int data;
        node *next;
        // remove next node
        void rm(int i){
            i--;
            if (i!=0)
            {
                if (next==NULL)
                {
                    cout << "INDEX DOESN'T EXIST!" << endl;
                }else
                {
                    next->rm(i);
                }
            }
            else
            {
                next=next->next;
            }
        }
        //GetAt
        void geta(int asd){
            if (asd!=0)
            {
                asd--;
                if (next==NULL)
                {
                    cout << "INDEX DOESN'T EXIST!" << endl;
                }else
                {
                    next->geta(asd);
                }
            }
            else
            {
                cout << data << endl;
            }
        }
        // Display all
        void displayn(){
            if (this!=NULL)
            {
                cout << data << endl;
                next->displayn();
            }else
            {
                cout << "END" << endl;
            }
        }
};

//Class LinekdList
class linked_list
{
private:
    node *head,*tail;
public:
    linked_list()
    {
        head = NULL;
        tail = NULL;
    }

    //AddNode
    void add_node(int n)
    {
        node *tmp = new node;
        tmp->data = n;
        tmp->next = NULL;

        if(head == NULL)
        {
            head = tmp;
            tail = tmp;
        }
        else
        {
            tail->next = tmp;
            tail = tail->next;
        }
    }

    void display()
    {
        cout << "Display: " << endl;
        head->displayn();
    }

    //GetAtInvocation
    void getat(int asd){
        head->geta(asd-1);
    }

    //Delete head or delete next
    void del (int num)
    {   
        num-=1;
        if (num==0)
        {
            node * tmp;
            tmp = head;
            tmp = tmp->next;
            head= tmp;
        }
        else
        {
            head->rm(num);
        }
        
    }
};

// MAIN
int main()
{
    linked_list ANOVA;
    ANOVA.add_node(5);
    ANOVA.add_node(7);
    ANOVA.add_node(-4);
    ANOVA.add_node(100);
    ANOVA.add_node(34);
    // DeleteAt
    ANOVA.del(1); // Index starts at 1
    // PrintAll
    ANOVA.display();
    // GetAt
    ANOVA.getat(3); // Index starts at 1
    return 0;
}