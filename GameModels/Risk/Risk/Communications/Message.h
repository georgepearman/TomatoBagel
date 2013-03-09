//
//  Message.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Message : NSObject

@property NSString* message;
@property BOOL invalid;


- (id) initAsInvalidCommand;
- (void) encodeMessage;



@end
