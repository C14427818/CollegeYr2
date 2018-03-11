// CirQueue.java
// Circular queue implementation of a ADT Queue

class CirQueue 
{
    public int q[], back, front;
    public int qmax, size;


    public CirQueue( int _qmax) 
    {
        qmax = _qmax;
        size = front = back = 0;
        q = new int[qmax];
    }

    public void enQueue( int x) throws Exception
    {
        if( isFull() )
        {
            throw new Exception("Circular Queue is FULL!\n");
        }

        q[back] = x;
        back = (back + 1) % qmax;
        ++size;
        back = size;
   }

    public int deQueue() throws Exception
    {
        if ( isEmpty() )
        {
            throw new Exception("Nothing to deQueue");
        }
        int x = q[front];
        front = (front + 1) % qmax;
        --size;

        return x;
    }

    public boolean isEmpty() 
    {
        if (back == front)
        {
            return true;
        }
        return false;
    }

    public boolean isFull()
    {
        if (size == qmax)
        {
            return true;
        }
        return false;
    }


    public void display()
    {
        int i, n;
        System.out.println("\nCircular Queue contains: ");
        
        System.out.print("FRONT|\t\t");
        for(i=front, n=1; n<=size; ++n) 
        {
            System.out.print( q[i] + "  ");
            i = (i + 1) % qmax;
        }
        System.out.println("\t|BACK\n");

    }
}

public class Circular
{
    public static void main( String arg[] ) 
    {
        CirQueue q = new CirQueue(5);

        for(int i=1; i<=6; ++i)
        {
            try 
            {
                q.enQueue(i); 
            }
            catch(Exception e) 
            { 
                System.out.println("\nException thrown: " + e);
            }
        }

        q.display();
        
        System.out.println("\nCheck if queue is EMPTY: ");
        
        if ( q.isEmpty() )
        {
            System.out.println("YES");
        }
        else
        {
            System.out.println("NO");
        }


        int deQ = 0;
        try 
        {
            deQ = q.deQueue();
            System.out.println("\nValue deQ'd: " + deQ);
        }
        catch(Exception e) 
        { 
            System.out.println("\nException thrown: " + e);
        }
        
        System.out.println("\nCheck if queue is full: ");
        
        if ( q.isFull() )
        {
            System.out.println("NO");
        }
        else
        {
            System.out.println("YES");
        }
        
        try 
        {
            q.enQueue(11);  
        } 
        catch(Exception e) 
        { 
            System.out.println("\nException thrown: " + e); 
        }

        q.display();

    }

} // end of class


