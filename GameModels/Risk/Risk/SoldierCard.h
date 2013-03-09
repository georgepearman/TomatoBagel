//
//  SoldierCard.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

typedef enum
{
    SOLDIER,
    HORSE,
    CANNON
} SoldierType;


@interface SoldierCard : NSObject

@property Country* country;
@property SoldierType soldierType;

- (id) initWithCountry: (Country*) country soldierType: (SoldierType) soldierType;

@end
