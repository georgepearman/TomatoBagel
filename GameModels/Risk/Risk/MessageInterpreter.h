//
//  MessageInterpreter.h
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageInterpreter : NSObject

- (id) initWithString: (NSString*) string;

@property NSArray* messageInChunks;

- (NSString*) getGameId;
- (NSString*) getPlayer;

@end
