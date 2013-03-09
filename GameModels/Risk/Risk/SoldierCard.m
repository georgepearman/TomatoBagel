//
//  SoldierCard.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "SoldierCard.h"

@implementation SoldierCard

- (id) initWithCountry:(Country *)country soldierType:(SoldierType)soldierType
{
    self = [super init];
    
    if ( self )
    {
        self.country = country;
        self.soldierType = soldierType;
    }
    
    return self;
}


+(BOOL) isValidBonusSet:(SoldierCard *)card1 :(SoldierCard *)card2 :(SoldierCard *)card3
{
    if ( card1.country == card2.country && card2.country == card3.country && card3.country == card1.country )
    {
        return true;
    }
    
    if ( card1.soldierType == card2.soldierType && card2.soldierType == card3.soldierType && card3.soldierType == card1.soldierType )
    {
        return true;
    }
    
    if ( card1.soldierType != card2.soldierType && card2.soldierType != card3.soldierType && card3.soldierType != card1.soldierType )
    {
        return true;
    }
}

- (void) encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.country forKey:@"country"];
    [coder encodeInt:self.soldierType forKey:@"soldierType"];
}

- (id) initWithCoder: (NSCoder*) coder
{
    self = [super init];
    
    if( self )
    {
        self.country = [coder decodeObjectForKey:@"country"];
        self.soldierType = [coder decodeIntForKey:@"soldierType"];
    }
    
    return self;
}

@end
