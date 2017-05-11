//
//  main.m
//  Assignment3
//
//  Created by Harry Li on 2017-05-10.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *nissan = [[Car alloc] initWithModel:@"Rogue"];
        
        [nissan drive];
        
        Toyota *toyota = [[Toyota alloc] init];
        
        [toyota drive];
        
    }
    return 0;
}
