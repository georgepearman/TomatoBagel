//
//  HowManyDiceToAttackWithMessage.h
//  Risk
//
//  Created by George Pearman on 3/9/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Message.h"

@interface HowManyDiceToAttackWithMessage : Message

@property Player* player;
@property int maxDice;

- (id) initWithAskingPlayer: (Player*) player andMaxDice: (int) maxDice;

@end
