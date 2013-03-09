//
//  RiskModel.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "Player.h"
#import "SoldierCard.h"
#import "Message.h"
#import "GiveSoldierMessage.h"

@interface RiskModel : NSObject

@property NSString* filePath;

@property NSMutableArray* unusedSoldierCards;
@property NSMutableArray* countries;

@property int SoldierCardBonus;

//  For setting up a new game
- (id) initWithNewGame;
- (void) initCountryArray;
- (void) initSoldierCards;
////////


//  For regular game play.
- (SoldierCard*) getRandomSoldierCard;

- (id) initWithDataFile: (NSString*) dataFileName andMessage: (NSString*) message;


//  B1
- (Message*) didRecieveCardUseMessageFromPlayer: (Player*) player WithCards: (SoldierCard*) card1: (SoldierCard*) card2: (SoldierCard*) card3;
- (void) increaseSoldierCardBonus;
///////


- (BOOL) populateModelWithFileData;

- (BOOL) pullMessage: (NSString*) message;

-(BOOL) exportToDataFile;

@end
