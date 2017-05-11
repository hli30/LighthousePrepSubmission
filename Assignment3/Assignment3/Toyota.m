//
//  Toyota.m
//  Assignment3
//
//  Created by Harry Li on 2017-05-10.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Toyota.h"


@implementation Toyota

//init override
- (instancetype)init
{
    self = [super init];
    if (self) {
        _model= @"Prius";
    }
    return self;
}

@end
