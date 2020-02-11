#include <stdio.h>
#include <string.h>

int main() {
    
    for (int j = 1; j <= 100; j++)
    {
        char output[10];
        memset(&output, 0, sizeof(output));
        if (j % 3 == 0) {
            strcat(output, "Fizz");
        }
        if (j % 5 == 0) {
            strcat(output, "Buzz");
        }
        if (strcmp(output, "") == 0) {
            char num[4];
            snprintf(num, 4, "%d", j);
            strcat(output, num);
        }
        printf("%s\n", output);
        memset(&output, 0, sizeof(output));
    }
    return 0;
}
