//
//  GiveSoldierMessage.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "Message.h"

@interface GiveSoldierMessage : Message

@property int numberOfSoldiers;
@property Player* toPlayer;

- (id) initWithSoldiers: (int) number ToGiveToPlayer: (Player*) player;

@end
