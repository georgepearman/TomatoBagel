//
//  Player.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SoldierCard.h"

@class SoldierCard;
@interface Player : NSObject

@property NSMutableArray* ownedCountries;
@property NSMutableArray* ownedSoldierCards;

- (void) giveSoldierCard: (SoldierCard*) soldierCard;
- (void) takeSoldierCard: (SoldierCard*) soldierCard;

@end
