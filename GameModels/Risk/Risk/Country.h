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

@interface Country : NSObject


@property NSString* name;
@property NSMutableArray* connectedCountries;
@property Player* owner;

@property int numSoldiers;

- (id) initWithName: (NSString*) name;
- (void) connectToCountry: (Country*) countries;
- (void) addSoldiers: (int) number;


@end
