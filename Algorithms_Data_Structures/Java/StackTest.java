// StackTest.java
// Linked list implementation of Stack
class StackTest {
    
    class Node {
        int data;
        Node next;  
    }
    private Node top;
      
    public Stack()
    { 
        top = null;
    }
    
    //recieves parameter from main s.push(x) , creates a new
    //node to store the int (x) 
    public void push(int x) {
        Node  t = new Node();
        //assigns (x) to node
        t.data = x;
        //changes location to next node
        t.next = top;
        top = t;
    }
    // only to be called if list is non-empty.
    // Otherwise an exception should be thrown.
    public int pop(){
        int result = top.data;
        top = top.next;
        return result;
    }
    
    public boolean isMember(int x)
    {
        boolean check;
        Node t = top;
        
        //loop to check contents of stack for x
        while (t != null) {
            //if x is in the Stack it returns check as true
            if(t.data == x)
            {
                check = true;
                return check;
            }
            else
            {
                t = t.next;
            }
        }//end while
        //if x is not in the Stack it returns check as false
        check = false;
        return check;
    }
    /*
    public boolean isEmpty(){
       do yourself
    }*/
    public void display() {
        Node t = top;
        //Console.Write("\nStack contents are:  ");
        System.out.println("\nStack contents are:  ");
        
        //loop to print out each of the elements 
        while (t != null) {
            //Console.Write("{0} ", t.data);
            System.out.print(t.data + " ");
            t = t.next;
        }
        //Console.Write("\n");
        System.out.println("\n");
    }
    
    public int size(){
        
        Node t = top;
        int i = 0;
        //loop to print out each of the elements 
        while (t != null) {
            
            //increments i for every iteration
            i ++;
            t = t.next;
        }
        return i;
    }//end size() 
}
public class StackTest
{
    public static void main( String[] arg){
        
        //Creates the new Stack s
        Stack s = new Stack();
        //Console.Write("Stack is created\n");
        System.out.println("Stack is created\n");
        
        //calls the push() function in s(stack class)
        s.push(10); s.push(3); s.push(11); s.push(7);
        //displays the pushed elements of s
        s.display();
        
       
        int i = s.pop();
        System.out.println("Just popped " + i);
        s.display();
        
        //check if member is in the stack
        boolean check = s.isMember(3);
        if(check)
        {
             System.out.println("true");
        }
        if(!check)
        {
             System.out.println("false");
        }
        
        int j = s.size();
        //Print New Line
        System.out.println("\n");
        //displays amount of elements in Stack
        System.out.println(j + ":Elements in stack");
        
    }
}