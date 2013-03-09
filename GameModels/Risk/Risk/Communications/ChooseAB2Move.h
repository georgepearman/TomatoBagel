//
//  ChooseACountryToAttackMessage.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Message.h"
#import "Player.h"

@interface ChooseAB2Move : Message

@property Player* player;

- (id) initForPlayer: (Player*) player;

@end
