/* array.c -- read, reverse, and write an array of integers */

#include <stdio.h>

#define MAX 10

void intSwap(int *x, int *y);
int getArray(int a[], int max, int terminator);
void printArray(int a[], int n);
void reverseArray(int a[], int n);

int main(void)
{
	int x[MAX];
	int howMany;

	howMany = getArray(x, MAX, -1);
	printf("Read the following array:\n");
	printArray(x, howMany);
	reverseArray(x, howMany);
	printf("After being reversed:\n");
	printArray(x, howMany);
}

/* swap the contents of x and y */
void intSwap(int *x, int *y)
{
	int tmp = *x;
	*x = *y;
	*y = tmp;
}

/* print the first n elements in the array a */
void printArray(int a[], int n)
{
	int i;

	for ( i=0; i<n; i++ ) {
		printf("\t%d\n", a[i]);
	}
}

/* get up to max integers from the user and store them in a; 
 * terminator marks end of input */
int getArray(int a[], int max, int terminator)
{
	int n = 0;
	int tmp;

	do {
		printf("Enter integer [%d to terminate] : ", terminator);
		scanf("%d", &tmp);
		if ( tmp==terminator ) {
			break;
		} 
		if ( n>=max ) {
			printf("Sorry, array is full\n");
			return n;
		} else { 
			a[n++] = tmp;
		}
	} while ( 1 );
	return n;
}

/* reverse the order of the first n elements of a */
void reverseArray(int a[], int n)
{
	int i;

	for ( i=0; i<n/2; i++ ) {
		intSwap(&a[i], &a[n-i-1]);
	}
}
