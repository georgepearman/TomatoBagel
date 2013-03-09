//
//  Player.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void) giveSoldierCard: (SoldierCard*) soldierCard
{
    [self.ownedSoldierCards addObject:soldierCard];
}

- (void) takeSoldierCard:(SoldierCard *)soldierCard
{
    [self.ownedSoldierCards removeObject:soldierCard];
}


@end
