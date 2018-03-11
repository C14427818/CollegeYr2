#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#define NUM_THREADS 4

pthread_t tid[2];

//thread for cube
void* clacCube(void *side){

	float side = 0;
	float answer = 0;
	
	printf("Enter side length of Cube: ");
	scanf("%f", &side);

	answer = side * side * side;

	printf("Cube is %f", answer);

}

//thread for fibonacci
void* fib(void *num){

	int num = 0;
	int i = 0;
	int temp = 0;


	printf("Enter element you want to see: ");
	scanf("%d", &num);

	for(i; i < num; i++){
	
		temp = num;
		num = temp + num;
		temp = num;
	}

	printf("The number in sequence is %d", &temp);

}

if(pthread_equal(id,tid[0])){

	printf("First thread(Cube);
}
else{

	printf("Second thread(Fibonacci));
}

int main(int argc, char *argv[]){

	pthreads_t threads[NUM_THREADS];
	int j = 0;
	int err;
	int err1;

	//making sure thread 1 can be created
	while(j < 2){

		err = pthread_create(&(tid[i], NULL, &calcCube, NULL);
		if(err != 0){

		printf("Can't create");

		}
		else{
	
		calcCube(void *side);
		
		}

		i++;
}
	//making sure thread 2 can be created
	while(j > 2){

	err1 = pthread_create(&(tid[i], NULL, &fib, NULL);

		if(err1 != 2){

		printf("Can't create");

	}
	else{
	
		fib(void *sum);

	
	}
	
	i--;

}
	sleep(5);

	return 0;
}

