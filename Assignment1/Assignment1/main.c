//
//  main.c
//  Assignment1
//
//  Created by Harry Li on 2017-05-08.
//  Copyright © 2017 Harry. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    for(int i = 1; i <= 100; ++i){
        if(i%3 == 0 && i%5 == 0){
            printf("FizzBuzz\n");
        }
        else if(i%3 == 0){
            printf("Fizz\n");
        }
        else if(i%5 == 0){
            printf("Buzz\n");
        }
        else{
            printf("%i\n",i);
        }
    }
}

