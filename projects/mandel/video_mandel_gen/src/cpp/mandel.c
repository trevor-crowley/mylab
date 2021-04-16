#include <stdio.h>

int main()
{
    int max_iteration = 255;
    int iteration = 0;
    double x0 = -0.776250000000000;
    double y0 = +0.123750000000000;
    double rsquare = 0;
    double isquare = 0;
    double zsquare = 0;
    double x,y;	
    
    while ((rsquare + isquare <= 4) && (iteration < max_iteration)) { 
        x = rsquare - isquare + x0;
        y = zsquare - rsquare - isquare + y0;
        rsquare = x * x;
        isquare = y * y;
        zsquare = (x + y) * (x + y);
        iteration = iteration + 1;
    }
    printf("%d\n", iteration);
    return iteration;
}
