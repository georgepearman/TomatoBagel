//
//  HowManyDiceToAttackWithMessage.m
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "HowManyDiceToAttackWithMessage.h"

@implementation HowManyDiceToAttackWithMessage


-(id) initWithAskingPlayer:(Player *)player andMaxDice:(int)maxDice
{
    self = [super init];
    
    if ( self )
    {
        self.player = player;
        self.maxDice = maxDice;
    }
    
    return self;
}

@end
