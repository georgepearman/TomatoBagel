//
//  Player.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Player.h"

@implementation Player

- (id) init
{
    self = [super init];

    if ( self )
    {
        self.beginningTroops = 40;
    }
    
    return self;
}

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
    [coder encodeInt:self.beginningTroops forKey:@"beginningTroops"];
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
        self.beginningTroops = [coder decodeIntegerForKey:@"beginningTroops"];
    }
    
    return self;
}


@end
