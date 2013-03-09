//
//  GiveSoldierMessage.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "GiveSoldierMessage.h"

@implementation GiveSoldierMessage

- (id) initWithSoldiers:(int)number ToGiveToPlayer:(Player *)player
{
    self = [super init];
    
    if ( self )
    {
        self.numberOfSoldiers = number;
        self.toPlayer = player;
    }
    
    return self;
}

@end
