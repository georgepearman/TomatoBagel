//
//  MessageInterpreter.m
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "MessageInterpreter.h"

@implementation MessageInterpreter

-(id) initWithString:(NSString *)string
{
    self = [super init];
    
    if ( self )
    {
        self.messageInChunks = [string componentsSeparatedByString:@"@"];
    }
    
    return self;
}

-(NSString*) getGameId
{
    return [self.messageInChunks objectAtIndex:0];
}


- (NSString*) getPlayer
{
    return [self.messageInChunks objectAtIndex:1];
}

@end
