#include <string>

int main()
{
    for (int j = 1; j <=100; j++) {
        bool found = false;
        
        if ((j % 3)==0) {
            printf("Fizz");
            found = true;
        }
        
        if ((j % 5)==0) {
            printf("Buzz");
            found = true;
        }
        
        if (!found){
            printf("%d", j);
        }
        printf("\n");
    }
    
    return 0;
}
