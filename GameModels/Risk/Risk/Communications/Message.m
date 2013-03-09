//
//  Message.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Message.h"
#import "RiskModel.h"

@implementation Message


- (id) init
{
    self = [super init];
    
    if ( self )
    {
        self.invalid = FALSE;
    }
    
    return self;
}

- (id) initAsInvalidCommand
{
    self = [super init];
    
    if ( self )
    {
        self.invalid = TRUE;
    }
    
    return self;
}

- (void) encodeMessageWithModel:(RiskModel *)model
{
    
}


- (void) addCountryDataToMessageFromModel:(RiskModel *)model
{
    [self.message appendString:[model getAllCountryData]];
}


@end
