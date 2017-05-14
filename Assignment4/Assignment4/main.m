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
    
    NSNumber *max = array[0];
    
    //Overwrite max everytime the loop finds a larger interger
    for (int i = 1; i < [array count]; ++i){
        if(array[i] >= max){
            max = array[i];
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
