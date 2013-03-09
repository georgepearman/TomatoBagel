//
//  Country.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Country.h"

@implementation Country

- (id) initWithName:(NSString *)name
{
    self = [super init];
    
    if ( self )
    {
        self.name = name;
        self.connectedCountries = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) connectToCountry:(Country *)country
{
    [self.connectedCountries addObject:country];
}

- (void) putInContinent:(Continent)continent
{
    self.continent = continent;
}

-(void) addSoldiers:(int)number
{
    self.numSoldiers += number;
}

@end
