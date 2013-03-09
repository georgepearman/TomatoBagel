//
//  GetNextAPhaseCountryPick.m
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "GetNextAPhaseCountryPick.h"

@implementation GetNextAPhaseCountryPick

-(id) initForPlayer:(Player *)player
{
    self = [super init];
    
    if ( self )
    {
        self.player = player;
    }
    
    return self;
}

@end
