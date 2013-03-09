//
//  ChooseACountryToAttackMessage.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "ChooseAB2Move.h"

@implementation ChooseAB2Move

- (id) initForPlayer:(Player *)player
{
    self = [super init];
    
    if ( self )
    {
        self.player = player;
    }
    
    return self;
}

@end
