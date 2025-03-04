#include <stdio.h>

int main() {
    // Array with automatic size determination using designated initializers
    int numbers[] = { 
        [1] = 10,   // Assign 10 to index 1
        [3] = 20,   // Assign 20 to index 3
        [5] = 50    // Assign 50 to index 5
        // Uninitialized elements will be set to 0
    };

    // Determine the size of the array automatically
    int size = sizeof(numbers) / sizeof(numbers[0]);

    // Print the array elements
    printf("Array values:\n");
    for (int i = 0; i < size; i++) {
        printf("numbers[%d] = %d\n", i, numbers[i]);
    }

    return 0;
}

