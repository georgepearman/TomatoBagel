//
//  Message.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RiskModel;
@class Player;
@interface Message : NSObject

@property NSMutableString* message;
@property BOOL invalid;


- (id) initAsInvalidCommand;
- (void) encodeMessageWithModel: (RiskModel*) model;

- (void) addCountryDataToMessageFromModel: (RiskModel*) model;



@end
