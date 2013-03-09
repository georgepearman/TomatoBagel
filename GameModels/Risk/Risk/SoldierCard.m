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

@end
