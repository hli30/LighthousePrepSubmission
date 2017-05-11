//
//  Car.h
//  Assignment3
//
//  Created by Harry Li on 2017-05-10.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    //make _model accessible to subclass Toyota
    NSString* _model;
}

@property NSString *model;

-(void) drive;
-(instancetype) initWithModel: (NSString *) model;


@end
