//
//  SoldierCard.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@class Country;

typedef enum
{
    SOLDIER,
    HORSE,
    CANNON,
} SoldierType;

@interface SoldierCard : NSObject

@property SoldierType soldierType;
@property Country* country;

-(id) initWithCountry:(Country*) country soldierType: (SoldierType) soldierType;

+(BOOL) isValidBonusSet:(SoldierCard *)card1 :(SoldierCard *)card2 :(SoldierCard *)card3;

@end
