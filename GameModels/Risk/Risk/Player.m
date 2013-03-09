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

- (void) encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.nextPlayer forKey:@"nextPlayer"];
    [coder encodeInt:self.soldiersToPlaceOnBoard forKey:@"soldiersToPlaceOnBoard"];
    [coder encodeObject:self.ownedCountries forKey:@"ownedCountries"];
    [coder encodeObject:self.ownedSoldierCards forKey:@"ownedSoldierCards"];
}

- (id) initWithCoder: (NSCoder*) coder
{
    self = [super init];
    
    if( self )
    {
        self.nextPlayer = [coder decodeObjectForKey:@"nextPlayer"];
        self.soldiersToPlaceOnBoard = [coder decodeIntForKey:@"soldiersToPlaceOnBoard"];
        self.ownedCountries = [coder decodeObjectForKey:@"ownedCountries"];
        self.ownedSoldierCards = [coder decodeObjectForKey:@"ownedSoldierCards"];
    }
    
    return self;
}


@end
