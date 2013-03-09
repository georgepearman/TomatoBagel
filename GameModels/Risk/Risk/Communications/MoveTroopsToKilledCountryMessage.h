//
//  MoveTroopsToKilledCountryMessage.h
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Message.h"

@interface MoveTroopsToKilledCountryMessage : Message

@property int maxTroops;

- (id) initWithMaxTroopsToMove: (int) maxTroops;

@end
