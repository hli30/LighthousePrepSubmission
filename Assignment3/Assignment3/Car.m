//
//  Car.m
//  Assignment3
//
//  Created by Harry Li on 2017-05-10.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void) drive {
    NSLog(@"The model is: %@", _model);
}

- (instancetype)initWithModel: (NSString *) model
{
    self = [super init];
    if (self) {
        _model = model;
    }
    return self;
}
@end
