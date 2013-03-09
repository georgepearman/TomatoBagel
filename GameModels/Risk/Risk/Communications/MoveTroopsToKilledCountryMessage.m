//
//  MoveTroopsToKilledCountryMessage.m
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "MoveTroopsToKilledCountryMessage.h"

@implementation MoveTroopsToKilledCountryMessage

- (id) initWithMaxTroopsToMove:(int)maxTroops
{
    self = [super init];

    if ( self )
    {
        self.maxTroops = maxTroops;
    }
    
    return self;
}


@end
