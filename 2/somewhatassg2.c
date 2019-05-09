//#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>
#include<stdio.h>
void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}
void ascending(int a[20],int n)
{
  for (int i = 0; i < n-1; i++)
     for (int j = 0; j < n-i-1; j++)
         if (a[j] > a[j+1])
            swap(&a[j], &a[j+1]);
}
void descending(int a[20],int n)
{
  for (int i = 0; i < n-1; i++)
     for (int j = 0; j < n-i-1; j++)
         if (a[j] < a[j+1])
            swap(&a[j], &a[j+1]);
}
void display(int array[20],int n)
{
  for(int i=0;i<n;i++)
  {
    printf("%d\t",array[i]);
  }
}

int main()
{
  pid_t pid;int st;
  int n;
  printf("Enter size of array:");
  scanf("%d",&n);
  int array[n];

  for(int i=0;i<n;i++)
  {
    printf("Enter:");
    scanf("%d",&array[i]);
  }

  pid=fork();
  if(pid==0)
    {//printf("Hello from child\n");
    printf("In child,ID=%ld,Parent's ID=%ld\n",(long)getpid(),(long)getppid());
    display(array,n);
    descending(array,n);

    printf("\nAfter sorting:\n");
    display(array,n);
    printf("\n-----------\n");

  }
  else
  {
    //wait(NULL);//for synchronization, parent is made to wait till child process is completed.

    wait(&st);
    if(WIFEXITED(st))
    {
      printf("Child's terminated status=%d\n",WEXITSTATUS(st));
    }
    printf("In Parent,ID=%ld,Parent's ID=%ld\n",(long)getpid(),(long)getppid());
    display(array,n);
    ascending(array,n);

    printf("\nAfter sorting:\n");
    display(array,n);
    printf("\n-----------\n");
  }
  return 0;
}
