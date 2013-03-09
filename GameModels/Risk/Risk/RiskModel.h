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
#import "AllMessageImports.h"


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


//  B1  //
- (Message*) didReceiveNextPlayerTurn: (Player*) player;
- (int) regularTurnCardsForPlayer: (Player*) player;
- (int) getBonusForContinent: (Continent) continent;
- (Message*) didReceiveCardUseMessageFromPlayer: (Player*) player WithCards: (SoldierCard*) card1: (SoldierCard*) card2: (SoldierCard*) card3;
- (void) increaseSoldierCardBonus;
- (Message*) didReceivePlaceSoldierInCountry: (Country*) country fromPlayer: (Player*) player;
- (Message*) getHowManySoldiersLeftToPlaceOrNextPhaseMessageForPlayer: (Player*) player;
//////////

//  B2  //
- (Message*) didReceiveAttackFromPlayer: (Player*) player countryA: (Country*) countryA countryB: (Country*) countryB;
- (int) getMaxNumberOfAttackDiceFromCountry: (Country*) country;
//////////

//  B3  //
- (Message*) didReceiveMove: (int) numberOfTroopsToMove TroopsFromCountry: (Country*) countryA toCountry: (Country*) countryB;
- (BOOL) country: (Country*) countryA isConnectedTo: (Country*) countryB;
- (Message*) didFinishMovingTroops: (Player*) player;
//////////

- (BOOL) populateModelWithFileData;

- (BOOL) pullMessage: (NSString*) message;

-(BOOL) exportToDataFile;

@end
