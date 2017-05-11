//
//  main.m
//  Assignment4
//
//  Created by Harry Li on 2017-05-11.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

//Finds max in an unsorted int array without sorting
id findMax (NSMutableArray *array){
    
    NSNumber *max;
    NSNumber *temp;
    
    //Compare between the two numbers at array[n] and array[n+1], begin from n = 0
    for (int i = 0, j = 1; j < [array count]; ++i, ++j) {
        //Compare and store the larger of the two numbers in temp
        //Store the largest number of all in max
        if (array[i] >= array [j]){
            temp = array[i];
            if(temp > max){
                max = temp;
            }
        }else{
            temp = array[j];
            if(temp > max){
                max = temp;
            }
        }
    }
    return max;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int numberOfRandInt = 10; // Determines how many random ints to populate the array
        int randUpperBound = 100; // The ints generated will be between 0 and (randUpperBound - 1)
        
        //Make an array and populate with random ints
        NSMutableArray *randArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < numberOfRandInt; ++i){
            [randArray addObject: [NSNumber numberWithInt:arc4random_uniform(randUpperBound)]];
        }
        
        NSLog(@"The random int array is: %@\nThe max is: %@", randArray, findMax(randArray));
    }
    
    return 0;
}
