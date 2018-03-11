class QueueException extends Exception {
    // do as in stack example
	public QueueException(String s) 
	{
        super(s);
    }
}    


interface Queue {
    public void enQueue(int x) throws QueueException;
    public int deQueue() throws QueueException;
    public boolean isEmpty();   
	public void display();
}


class QueueLL implements Queue {
    
	
	 private class Node {
        int data;
        Node next;
    }

    Node z;
    Node head;
    Node tail;

     public QueueLL() {
        z = new Node(); z.next = z;
        head = z;  tail = null;
    }


  public void display() {
    System.out.println("\nThe queue values are:\n");

    Node temp = head;
    while( temp != temp.next) {
        System.out.print( temp.data + "  ");
        temp = temp.next;
    }
    System.out.println("\n");
  }


  public void enQueue(int x) throws QueueException
  {
    Node temp;

    temp = new Node();
    temp.data = x;
    temp.next = z;

    if(head == z)    // case of empty list
        head = temp;
    else                // case of list not empty
        tail.next = temp;

    tail = temp;        // new node is now at the tail
  }
  
  
  public int deQueue() throws QueueException
  {
	  int i = head.data;
	  if( head != head.next)//throw exception here
	  {
		  head = head.next;
	  }
	  return(i);
  }
  
  public boolean isEmpty()
  {
	  if( head != head.next)
		return(false);
	  else 
		  return(true);
  }
  
  public boolean isMember(int x)
  {
	Node temp = head; 
	boolean check = false;
	
	while( temp != temp.next)
		{
			if( temp.data == x )
			check = true;
			temp = temp.next;
		}
	return(check);
	
  }
  
  public void size()
  {
	Node temp = head; 
	int num = 0;
	
	while( temp != temp.next)
		{
			num++;
			temp = temp.next;
		}
	System.out.println("the size of the queue is " +num);
	  
  }
 
    



} // end of QueueLL class



class QueueCB implements Queue 
{
    private int q[], back, front;
    private int qmax, size;

	
    public QueueCB() {
        qmax = 4;
        size = front = back = 0;
        q = new int[qmax];
    }

    public void enQueue( int x) throws QueueException  
	{
        if( qmax == size) 
			return;
		q[back] = x;
		back = (back + 1) % qmax;
		++size; 
    }
	
	public void display()
	{
		int j = front;
		System.out.println("\nthe Queue : ");
		while(j < size)
		{
			System.out.println(q[j]);
			j++;
		}
	}
	
    public int deQueue()  throws QueueException 
    {
        
		int i = q[front];
		front = (front + 1)%4;
		return(i);
    }

    public boolean isEmpty() {
        return size == 0;
    }
}


// here we test both implementations
class QueueTest2 
{
    public static void main(String[] arg) 
	{
        Queue q1, q2;
        q1 = new QueueLL();
        q2 = new QueueCB();
        
        for(int i = 1; i<6; ++i)
        try { 
            q1.enQueue(i);            
        } catch (QueueException e) {
            System.out.println("Exception thrown: " + e); 
        }
        
		q1.display();
		
		//testing deQueue for LL
		int remove;
		try { 
            remove = q1.deQueue();            
        } catch (QueueException e) {
            System.out.println("Exception thrown: " + e); 
        }
		
		q1.display();
		
		//testing isEmpty for LL
		boolean t = q1.isEmpty();
		if(t)
			System.out.println("\nThe Queue is Empty");
		else
			System.out.println("\nThe Queue is not empty");
		
		
		//testing enQueue for CB
		for(int i = 1; i < 4; ++i)
        try { 
            q2.enQueue(i);            
        } catch (QueueException e) {
            System.out.println("Exception thrown: " + e); 
        }
		
		q2.display();
		
		
		//testing for deQueue in CB
		try { 
            int r = q2.deQueue();
			System.out.println("\nRemoving the number "+r+" from the queue");       
        } catch (QueueException e) {
            System.out.println("Exception thrown: " + e); 
        }
		
		
		q2.display();
		
		//testing for isEmpty for CB
		boolean is = q2.isEmpty();
		if(is)
			System.out.println("\nThe queue is empty");
		else
			System.out.println("\nThe Queue is not empty");
    
	}   
}

