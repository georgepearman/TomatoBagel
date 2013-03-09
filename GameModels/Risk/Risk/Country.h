//
//  Country.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@class Player;

typedef enum
{
    NORTH_AMERICA,
    SOUTH_AMERICA,
    EUROPE,
    ASIA,
    AFRICA,
    AUSTRALIA,
    NONE_CONT
} Continent;

@interface Country : NSObject


@property NSString* name;
@property NSMutableArray* connectedCountries;
@property Player* owner;
@property Continent continent;

@property int numSoldiers;

- (id) initWithName: (NSString*) name;
- (void) connectToCountry: (Country*) countries;
- (void) putInContinent: (Continent) continent;

- (void) addSoldiers: (int) number;

- (NSString*) getCountryData;


@end
