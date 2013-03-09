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

- (void) encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];    
    [coder encodeObject:self.owner forKey:@"owner"];
    [coder encodeInt:self.continent forKey:@"continent"];
    [coder encodeInt:self.numSoldiers forKey:@"numSoldiers"];
    [coder encodeObject:self.connectedCountries forKey:@"connectedCountries"];
}

- (id) initWithCoder: (NSCoder*) coder
{
    self = [super init];
    
    if( self )
    {
        self.name = [coder decodeObjectForKey:@"name"];
        self.owner = [coder decodeObjectForKey:@"owner"];
        self.continent = [coder decodeIntForKey:@"continent"];
        self.numSoldiers = [coder decodeIntForKey:@"numSoldiers"];
        self.connectedCountries = [coder decodeObjectForKey:@"connectedCountries"];
    }
    
    return self;
}




@end
