#include <stdio.h>
#include <unistd.h>
#include <time.h>

#define MESSAGE "a\n"

int main() {
    clock_t start, end;
    int write_time, printf_time;

    // Measure write
    start = clock();
    write(STDOUT_FILENO, MESSAGE, 2); // Direct system call
    end = clock();
    write_time = end - start;

    // Measure printf
    start = clock();
    printf("%s", MESSAGE); // Adds formatting and buffering overhead
    fflush(stdout); // Ensure all buffered output is flushed
    end = clock();
    printf_time = end - start;

    // Print results
    printf("\nBenchmark Results:\n");
    printf("System call (write) time: %d ticks\n", write_time);
    printf("Library function (printf) time: %d ticks\n", printf_time);
    printf("Time difference (printf - write): %d ticks\n", printf_time - write_time);

    return 0;
}

