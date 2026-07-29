#include <stdio.h>

int array[5];

void create_array()
{
    int i;

    printf("Enter 5 elements of the array:\n");
    for(i = 0; i < 5; i++)
    {
        scanf("%d", &array[i]);
    }

    printf("\nYour array is:\n");
    for(i = 0; i < 5; i++)
    {
        printf("%d\t", array[i]);
    }
    printf("\n");
}

void insertion_sort()
{
    int i, j, k, key;

    for(j = 1; j < 5; j++)
    {
        key = array[j];
        i = j - 1;

        while(i >= 0 && array[i] > key)
        {
            array[i + 1] = array[i];
            i--;
        }

        array[i + 1] = key;

        printf("\nArray after %d iteration of Insertion Sort:\n", j);
        for(k = 0; k < 5; k++)
        {
            printf("%d\t", array[k]);
        }
        printf("\n");
    }
}

void selection_sort()
{
    int i, j, min_index, temp;

    for(i = 0; i < 4; i++)
    {
        min_index = i;

        for(j = i + 1; j < 5; j++)
        {
            if(array[j] < array[min_index])
            {
                min_index = j;
            }
        }

        temp = array[i];
        array[i] = array[min_index];
        array[min_index] = temp;

        printf("\nArray after %d iteration of Selection Sort:\n", i + 1);
        for(j = 0; j < 5; j++)
        {
            printf("%d\t", array[j]);
        }
        printf("\n");
    }
}

int main()
{
    int choice, i;

    create_array();

    printf("\nChoose Sorting Method:\n");
    printf("1. Insertion Sort\n");
    printf("2. Selection Sort\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);

    switch(choice)
    {
        case 1:
            insertion_sort();
            break;

        case 2:
            selection_sort();
            break;

        default:
            printf("Invalid choice!\n");
            return 0;
    }

    printf("\nSorted Array:\n");
    for(i = 0; i < 5; i++)
    {
        printf("%d ", array[i]);
    }

    printf("\n");

    return 0;
          }
