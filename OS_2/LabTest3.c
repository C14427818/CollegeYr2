/*

Lab Test 3 A semaphore implementation of the producer consumer problem
	
*/	
	
	
	
#include <pthread.h>
#include <stdio.h>
#include <semaphore.h>    

#define BUFF_SIZE 10

char buffer[BUFF_SIZE];
int nextIn = 0;
int nextOut = 0;

sem_t empty_slots;
sem_t full_slots;
sem_t mutex;


//  The producer function 
void Put(char item)
{
  // insert code for the P functions for the empty and mutex semaphores;
 
  //P function for empty and mutex
  sem_wait(&empty_slots);
  sem_wait(&mutex);

  // the critical region for the producer thread
  buffer[nextIn] = item;
  nextIn = (nextIn + 1) % BUFF_SIZE;
  printf("Producing %c ...\n", item);
  // code  for the V functions of the mutex and full semaphores}

  //V functions for full and mutex
  sem_post(&full_slots);
  sem_post(&mutex);

  //The producer thread
  void * Producer(void *arg)
{
    int i;

    // code to run the producer thread 10 times
	for(i = 0; i < 10; i++)
    {
      Put((char)('A'+ i % 26));   // inserts a letter of the alphabeth into the bounder buffer array
    }


    pthread_exit( NULL );
    return NULL;
   	
}

//  insert code for the consumer function

void Get()
{
	if(nextIn)
  
  // insert code for the consumer function of the consumer thread 
}


/* insert code for the consumer thread: */

void * Consumer(void * arg)

int value;

 /* you will need put the thread consumer thread to sleep for a briefly while  
  in order for the program to run "ideally"   */ 
sem_wait(&empty_slots);


//lock mute so code cannot be altered
pthread_mutex_lock(&mutex);

value = Producer(buffer);

//unlock so code can finish
pthread_mutex_unlock(&mutex);





sem_post(&full_slots)
  
printf("%s\n", buffer);

 pthread_exit( NULL );
 return NULL;
  

}


int main(int argc, int **argv)
{
	
	pthread_t idP, idC;
      
       int rc1, rc2;
	
	
	// insert code to initalise all three semaphore
       sem_init( &full_slots, 0, BUFF_SIZE );
       sem_init( &empty_slots, 0, 0 );//second set to 0 to assure first is executed
        
        
	
		
	// create thread for producer
	
	if( (rc1=pthread_create( &idP, NULL, Producer, NULL)) )
   {
      printf("Thread creation failed: %d\n", rc1);
   }
	
	
	//insert code to create thread for consumer 
	  rc2 = pthread_create( &idC, NULL, Consumer, NULL);
	
   
   
   
     
   /*insert code that prevents process from closing before threads are executed */
   
   /* prevents process from closing before threads are executed */
			pthread_join( threads[ 0 ], NULL );
            pthread_join( threads[ 1 ], NULL );
			


   
   // destroy all the semaphores
			sem_destroy( &empty_slots);
            sem_destroy( &full_slots);
            sem_destroy(&mutex);

            return 0;
	
	
	
}