//
//  RiskModel.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "AllMessageImports.h"

@class Message;
@interface RiskModel : NSObject

@property NSString* dataFileName;

@property NSMutableArray* unusedSoldierCards;
@property NSMutableArray* countries;

@property int SoldierCardBonus;

//  For setting up a new game
- (id) initWithNewGame;
- (void) initCountryArray;
- (void) initSoldierCards;
////////

//  For storing game state
@property Country* attacker;
@property Country* defender;
@property int attackRolls;
@property int defendRolls;
@property BOOL givenCardForThisRound;
-(void) exportToDataFile;
- (void) encodeWithCoder: (NSCoder * ) coder;
- (id) initWithDataFile: (NSString*) dataFilePath andMessage: (Message*) message;
////////

//  For sending messages to screen
- (NSString*) getAllCountryData;


///////

//  For regular game play.
- (SoldierCard*) getRandomSoldierCard;


//  A  //
- (Message*) didReceiveSoldierSelectionInCountry: (Country*) country fromPlayer: (Player*) player;


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
- (int) getMaxNumberOfDefendDiceForCountry: (Country*) country;
- (Message*) didReceiveNumberOfDiceToAttackWith: (int) numberOfDice;
- (Message*) didReceiveNumberOfDiceToDefendWith: (int) numberOfDice;
- (Message*) SimulateRollsWithAttackCount: (int) numAttacks fromCountry: (Country*) fromCountry andDefendCount: (int) numDefends toCountry: (Country*) toCountry;
- (NSNumber*) getHighestNumberInArray: (NSMutableArray*) numberArray;
- (Message*) didFinishSimulateRolls;
- (Message*) didMoveTroopsToDefendedLocation: (int) numMoved;
//////////

//  B3  //
- (Message*) didReceiveMove: (int) numberOfTroopsToMove TroopsFromCountry: (Country*) countryA toCountry: (Country*) countryB;
- (BOOL) country: (Country*) countryA isConnectedTo: (Country*) countryB;
- (Message*) didFinishMovingTroops: (Player*) player;
//////////

@end
