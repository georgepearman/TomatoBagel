//
//  RiskModel.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import "RiskModel.h"

@implementation RiskModel



- (void) initCountryArray
{
    Country* Alaska = [[Country alloc] initWithName: @"Alaska"];
    Country* Alberta = [[Country alloc] initWithName: @"Alberta"];
    Country* CentralAmerica = [[Country alloc] initWithName: @"Central America"];
    Country* EasternUnitedStates = [[Country alloc] initWithName: @"Eastern United States"];
    Country* Greenland = [[Country alloc] initWithName: @"Greenland"];
    Country* NorthwestTerritory = [[Country alloc] initWithName: @"Northwest Territory"];
    Country* Ontario = [[Country alloc] initWithName: @"Ontario"];
    Country* Quebec = [[Country alloc] initWithName: @"Quebec"];
    Country* WesternUnitedStates = [[Country alloc] initWithName: @"Western United States"];
    Country* Argentina = [[Country alloc] initWithName: @"Argentina"];
    Country* Brazil = [[Country alloc] initWithName: @"Brazil"];
    Country* Peru = [[Country alloc] initWithName: @"Peru"];
    Country* Venezeula = [[Country alloc] initWithName: @"Venezeula"];
    Country* GreatBritain = [[Country alloc] initWithName: @"Great Britain"];
    Country* Iceland = [[Country alloc] initWithName: @"Iceland"];
    Country* NorthernEurope = [[Country alloc] initWithName: @"Northern Europe"];
    Country* Scandinavia = [[Country alloc] initWithName: @"Scandinavia"];
    Country* SouthernEurope = [[Country alloc] initWithName: @"Southern Europe"];
    Country* Ukraine = [[Country alloc] initWithName: @"Ukraine"];
    Country* WesternEurope = [[Country alloc] initWithName: @"Western Europe"];
    Country* Congo = [[Country alloc] initWithName: @"Congo"];
    Country* EastAfrica = [[Country alloc] initWithName: @"East Africa"];
    Country* Egypt = [[Country alloc] initWithName: @"Egypt"];
    Country* Madagascar = [[Country alloc] initWithName: @"Madagascar"];
    Country* NorthAfrica = [[Country alloc] initWithName: @"North Africa"];
    Country* SouthAfrica = [[Country alloc] initWithName: @"South Africa"];
    Country* Afghanistan = [[Country alloc] initWithName: @"Afghanistan"];
    Country* China = [[Country alloc] initWithName: @"China"];
    Country* India = [[Country alloc] initWithName: @"India"];
    Country* Irkutsk = [[Country alloc] initWithName: @"Irkutsk"];
    Country* Japan = [[Country alloc] initWithName: @"Japan"];
    Country* Kamchatka = [[Country alloc] initWithName: @"Kamchatka"];
    Country* MiddleEast = [[Country alloc] initWithName: @"Middle East"];
    Country* Mongolia = [[Country alloc] initWithName: @"Mongolia"];
    Country* Siam = [[Country alloc] initWithName: @"Siam"];
    Country* Siberia = [[Country alloc] initWithName: @"Siberia"];
    Country* Ural = [[Country alloc] initWithName: @"Ural"];
    Country* Yakutsk = [[Country alloc] initWithName: @"Yakutsk"];
    Country* EasternAustralia = [[Country alloc] initWithName: @"Eastern Australia"];
    Country* Indonesia = [[Country alloc] initWithName: @"Indonesia"];
    Country* NewGuinea = [[Country alloc] initWithName: @"New Guinea"];
    Country* WesternAustralia = [[Country alloc] initWithName: @"Western Australia"];
    
    [Alaska connectToCountry:Kamchatka];
    [Alaska connectToCountry:NorthwestTerritory];
    [Alaska connectToCountry:Alberta];
    [Alaska putInContinent:NORTH_AMERICA];
    
    [Alberta connectToCountry:Alaska];
    [Alberta connectToCountry:NorthwestTerritory];
    [Alberta connectToCountry:Ontario];
    [Alberta connectToCountry:WesternUnitedStates];
    [Alberta putInContinent:NORTH_AMERICA];
    
    [CentralAmerica connectToCountry:WesternUnitedStates];
    [CentralAmerica connectToCountry:EasternUnitedStates];
    [CentralAmerica connectToCountry:Venezeula];
    [CentralAmerica putInContinent:NORTH_AMERICA];
    
    [EasternUnitedStates connectToCountry:Ontario];
    [EasternUnitedStates connectToCountry:WesternUnitedStates];
    [EasternUnitedStates connectToCountry:CentralAmerica];
    [EasternUnitedStates connectToCountry:Quebec];
    [EasternUnitedStates putInContinent:NORTH_AMERICA];
    
    [Greenland connectToCountry:Quebec];
    [Greenland connectToCountry:Ontario];
    [Greenland connectToCountry:NorthwestTerritory];
    [Greenland connectToCountry:Iceland];
    [Greenland putInContinent:NORTH_AMERICA];
    
    [NorthwestTerritory connectToCountry:Alaska];
    [NorthwestTerritory connectToCountry:Alberta];
    [NorthwestTerritory connectToCountry:Ontario];
    [NorthwestTerritory connectToCountry:Greenland];
    [NorthwestTerritory putInContinent:NORTH_AMERICA];
    
    [Ontario connectToCountry:Alberta];
    [Ontario connectToCountry:NorthwestTerritory];
    [Ontario connectToCountry:Greenland];
    [Ontario connectToCountry:Quebec];
    [Ontario connectToCountry:EasternUnitedStates];
    [Ontario connectToCountry:WesternUnitedStates];
    [Ontario putInContinent:NORTH_AMERICA];
    
    [Quebec connectToCountry:Ontario];
    [Quebec connectToCountry:EasternUnitedStates];
    [Quebec connectToCountry:Greenland];
    [Quebec putInContinent:NORTH_AMERICA];
    
    [WesternUnitedStates connectToCountry:Alberta];
    [WesternUnitedStates connectToCountry:Ontario];
    [WesternUnitedStates connectToCountry:EasternUnitedStates];
    [WesternUnitedStates connectToCountry:CentralAmerica];
    [WesternUnitedStates putInContinent:NORTH_AMERICA];
    
    [Argentina connectToCountry:Peru];
    [Argentina connectToCountry:Brazil];
    [Argentina putInContinent:SOUTH_AMERICA];
    
    [Brazil connectToCountry:Peru];
    [Brazil connectToCountry:Venezeula];
    [Brazil connectToCountry:Argentina];
    [Brazil connectToCountry:NorthAfrica];
    [Brazil putInContinent:SOUTH_AMERICA];
    
    [Peru connectToCountry:Argentina];
    [Peru connectToCountry:Brazil];
    [Peru connectToCountry:Venezeula];
    [Peru putInContinent:SOUTH_AMERICA];
    
    [Venezeula connectToCountry:CentralAmerica];
    [Venezeula connectToCountry:Peru];
    [Venezeula connectToCountry:Brazil];
    [Venezeula putInContinent:SOUTH_AMERICA];
    
    [GreatBritain connectToCountry:Iceland];
    [GreatBritain connectToCountry:Scandinavia];
    [GreatBritain connectToCountry:NorthernEurope];
    [GreatBritain connectToCountry:WesternEurope];
    [GreatBritain putInContinent:EUROPE];
    
    [Iceland connectToCountry:Greenland];
    [Iceland connectToCountry:GreatBritain];
    [Iceland connectToCountry:Scandinavia];
    [Iceland putInContinent:EUROPE];
    
    [NorthernEurope connectToCountry:GreatBritain];
    [NorthernEurope connectToCountry:Scandinavia];
    [NorthernEurope connectToCountry:Ukraine];
    [NorthernEurope connectToCountry:SouthernEurope];
    [NorthernEurope connectToCountry:WesternEurope];
    [NorthernEurope putInContinent:EUROPE];
    
    [Scandinavia connectToCountry:Iceland];
    [Scandinavia connectToCountry:GreatBritain];
    [Scandinavia connectToCountry:NorthernEurope];
    [Scandinavia connectToCountry:Ukraine];
    [Scandinavia putInContinent:EUROPE];
    
    [SouthernEurope connectToCountry:WesternEurope];
    [SouthernEurope connectToCountry:NorthernEurope];
    [SouthernEurope connectToCountry:Ukraine];
    [SouthernEurope connectToCountry:MiddleEast];
    [SouthernEurope connectToCountry:Egypt];
    [SouthernEurope connectToCountry:NorthAfrica];
    [SouthernEurope putInContinent:EUROPE];
    
    [Ukraine connectToCountry:Scandinavia];
    [Ukraine connectToCountry:NorthernEurope];
    [Ukraine connectToCountry:SouthernEurope];
    [Ukraine connectToCountry:MiddleEast];
    [Ukraine connectToCountry:Afghanistan];
    [Ukraine connectToCountry:Ural];
    [Ukraine putInContinent:EUROPE];
    
    [WesternEurope connectToCountry:NorthAfrica];
    [WesternEurope connectToCountry:GreatBritain];
    [WesternEurope connectToCountry:NorthernEurope];
    [WesternEurope connectToCountry:SouthernEurope];
    [WesternEurope putInContinent:EUROPE];
    
    [Congo connectToCountry:NorthAfrica];
    [Congo connectToCountry:EastAfrica];
    [Congo connectToCountry:SouthAfrica];
    [Congo putInContinent:SOUTH_AMERICA];
    
    [EastAfrica connectToCountry:Egypt];
    [EastAfrica connectToCountry:NorthAfrica];
    [EastAfrica connectToCountry:Congo];
    [EastAfrica connectToCountry:Madagascar];
    [EastAfrica connectToCountry:MiddleEast];
    [EastAfrica putInContinent:SOUTH_AMERICA];
    
    [Egypt connectToCountry:NorthAfrica];
    [Egypt connectToCountry:EastAfrica];
    [Egypt connectToCountry:MiddleEast];
    [Egypt connectToCountry:SouthernEurope];
    [Egypt putInContinent:SOUTH_AMERICA];
    
    [Madagascar connectToCountry:EastAfrica];
    [Madagascar connectToCountry:SouthAfrica];
    [Madagascar putInContinent:SOUTH_AMERICA];
    
    [NorthAfrica connectToCountry:Brazil];
    [NorthAfrica connectToCountry:WesternEurope];
    [NorthAfrica connectToCountry:SouthernEurope];
    [NorthAfrica connectToCountry:Egypt];
    [NorthAfrica connectToCountry:EastAfrica];
    [NorthAfrica connectToCountry:Congo];
    [NorthAfrica putInContinent:SOUTH_AMERICA];
    
    [SouthAfrica connectToCountry:Congo];
    [SouthAfrica connectToCountry:EastAfrica];
    [SouthAfrica connectToCountry:Madagascar];
    [SouthAfrica putInContinent:SOUTH_AMERICA];
    
    [Afghanistan connectToCountry:Ukraine];
    [Afghanistan connectToCountry:MiddleEast];
    [Afghanistan connectToCountry:India];
    [Afghanistan connectToCountry:China];
    [Afghanistan connectToCountry:Ural];
    [Afghanistan putInContinent:ASIA];
    
    [China connectToCountry:Siam];
    [China connectToCountry:India];
    [China connectToCountry:Afghanistan];
    [China connectToCountry:Ural];
    [China connectToCountry:Siberia];
    [China connectToCountry:Mongolia];
    [China putInContinent:ASIA];
    
    [India connectToCountry:MiddleEast];
    [India connectToCountry:Afghanistan];
    [India connectToCountry:China];
    [India connectToCountry:Siam];
    [India putInContinent:ASIA];
    
    [Irkutsk connectToCountry:Siberia];
    [Irkutsk connectToCountry:Yakutsk];
    [Irkutsk connectToCountry:Kamchatka];
    [Irkutsk connectToCountry:Mongolia];
    [Irkutsk putInContinent:ASIA];
    
    [Japan connectToCountry:Kamchatka];
    [Japan connectToCountry:Mongolia];
    [Japan putInContinent:ASIA];
    
    [Kamchatka connectToCountry:Yakutsk];
    [Kamchatka connectToCountry:Alaska];
    [Kamchatka connectToCountry:Japan];
    [Kamchatka connectToCountry:Mongolia];
    [Kamchatka connectToCountry:Irkutsk];
    [Kamchatka putInContinent:ASIA];
    
    [MiddleEast connectToCountry:EastAfrica];
    [MiddleEast connectToCountry:Egypt];
    [MiddleEast connectToCountry:SouthernEurope];
    [MiddleEast connectToCountry:Ukraine];
    [MiddleEast connectToCountry:Afghanistan];
    [MiddleEast connectToCountry:India];
    [MiddleEast putInContinent:ASIA];
    
    [Mongolia connectToCountry:Japan];
    [Mongolia connectToCountry:Kamchatka];
    [Mongolia connectToCountry:Irkutsk];
    [Mongolia connectToCountry:Siberia];
    [Mongolia connectToCountry:China];
    [Mongolia putInContinent:ASIA];
    
    [Siam connectToCountry:China];
    [Siam connectToCountry:India];
    [Siam connectToCountry:Indonesia];
    [Siam putInContinent:ASIA];
    
    [Siberia connectToCountry:Ural];
    [Siberia connectToCountry:China];
    [Siberia connectToCountry:Mongolia];
    [Siberia connectToCountry:Irkutsk];
    [Siberia connectToCountry:Yakutsk];
    [Siberia putInContinent:ASIA];
    
    [Ural connectToCountry:Ukraine];
    [Ural connectToCountry:Afghanistan];
    [Ural connectToCountry:China];
    [Ural connectToCountry:Siberia];
    [Ural putInContinent:ASIA];
    
    [Yakutsk connectToCountry:Siberia];
    [Yakutsk connectToCountry:Irkutsk];
    [Yakutsk connectToCountry:Kamchatka];
    [Yakutsk putInContinent:ASIA];
    
    [EasternAustralia connectToCountry:WesternAustralia];
    [EasternAustralia connectToCountry:NewGuinea];
    [EasternAustralia putInContinent:AUSTRALIA];
    
    [Indonesia connectToCountry:Siam];
    [Indonesia connectToCountry:NewGuinea];
    [Indonesia connectToCountry:WesternAustralia];
    [Indonesia putInContinent:AUSTRALIA];
    
    [NewGuinea connectToCountry:Indonesia];
    [NewGuinea connectToCountry:WesternAustralia];
    [NewGuinea connectToCountry:EasternAustralia];
    [NewGuinea putInContinent:AUSTRALIA];
    
    [WesternAustralia connectToCountry:Indonesia];
    [WesternAustralia connectToCountry:NewGuinea];
    [WesternAustralia connectToCountry:EasternAustralia];
    [WesternAustralia putInContinent:AUSTRALIA];

    self.countries = [NSMutableArray arrayWithObjects:Alaska, Alberta, CentralAmerica, EasternUnitedStates, Greenland, NorthwestTerritory, Ontario, Quebec, WesternUnitedStates, Argentina, Brazil, Peru, Venezeula, GreatBritain, Iceland, NorthernEurope, Scandinavia, SouthernEurope, Ukraine, WesternEurope, Congo, EastAfrica, Egypt, Madagascar, NorthAfrica, SouthAfrica, Afghanistan, China, India, Irkutsk, Japan, Kamchatka, MiddleEast, Mongolia, Siam, Siberia, Ural, Yakutsk, EasternAustralia, Indonesia, NewGuinea, WesternAustralia, nil];
}

- (void) initSoldierCards
{
    self.unusedSoldierCards = [[NSMutableArray alloc] init];
    
    for ( Country* country in self.countries )
    {
        [self.unusedSoldierCards addObject:[[SoldierCard alloc] initWithCountry:country soldierType:SOLDIER]];
        [self.unusedSoldierCards addObject:[[SoldierCard alloc] initWithCountry:country soldierType:HORSE]];
        [self.unusedSoldierCards addObject:[[SoldierCard alloc] initWithCountry:country soldierType:CANNON]];
    }
}

- (SoldierCard*) getRandomSoldierCard
{
    SoldierCard* soldierCard = [self.unusedSoldierCards objectAtIndex:arc4random() % [self.unusedSoldierCards count]];
    [self.unusedSoldierCards removeObject:soldierCard];
    return soldierCard;
}




-(id) initWithDataFile
{
    
}



//  B1  //
- (Message*) didReceiveNextPlayerTurn:(Player *)player
{
    player.soldiersToPlaceOnBoard = [self regularTurnCardsForPlayer:player];
    return [self getHowManySoldiersLeftToPlaceOrNextPhaseMessageForPlayer:player];
}
- (int) regularTurnCardsForPlayer:(Player *)player
{
    Continent pastCont = NONE_CONT;
    Player* pastOwner;
    BOOL setMade = true;
    int cardCount = 2; // everyone gets 2 cards per turn no matter what
    
    for ( Country* country in self.countries )
    {
        //  for the first country in the array
        if ( pastCont == NONE_CONT )
        {
            pastOwner = country.owner;
            pastCont = country.continent;
        }
        else if ( pastCont != country.continent )
        {
            //  we have started looking at a new continent
            //  if setMade is true, means one person owns all continent countries
            //  if this person is the desired person, increase count
            if ( setMade && pastOwner == player )
            {
                cardCount += [self getBonusForContinent:pastCont];
            }
            pastCont = country.continent;
            pastOwner = country.owner;
            setMade = true;
        }
        else // same continent
        {
            if ( country.owner != pastOwner )
            {
                //  same continent but owners are different
                setMade = false;
            }
        }
    }
    return cardCount;
}
- (int) getBonusForContinent:(Continent)continent
{
    if ( continent == SOUTH_AMERICA || continent == AUSTRALIA )
    {
        return 2;
    }
    else if ( continent == AFRICA )
    {
        return 3;
    }
    else if ( continent == EUROPE || NORTH_AMERICA )
    {
        return 5;
    }
    else if ( continent == ASIA )
    {
        return 7;
    }
}
- (Message*) didReceiveCardUseMessageFromPlayer: (Player*) player WithCards: (SoldierCard*) card1: (SoldierCard*) card2: (SoldierCard*) card3
{
    if( [SoldierCard isValidBonusSet:card1 :card2 :card3] )
    {
        //  take away soldier cards from the player
        [player takeSoldierCard:card1];
        [player takeSoldierCard:card2];
        [player takeSoldierCard:card3];
        
        //  add the soldier cards back into the unused soldier card pool
        [self.unusedSoldierCards addObject:card1];
        [self.unusedSoldierCards addObject:card2];
        [self.unusedSoldierCards addObject:card3];
        
        player.soldiersToPlaceOnBoard += self.SoldierCardBonus;
        
        //  increase the bonus for the next set that is turned in
        [self increaseSoldierCardBonus];
        
        
        return [self getHowManySoldiersLeftToPlaceOrNextPhaseMessageForPlayer:player];
    }
    
    //  otherwise they tried to turn in an invalid set
    return [[Message alloc] initAsInvalidCommand];
}

- (void) increaseSoldierCardBonus
{
    if ( self.SoldierCardBonus < 12 )
    {
        self.SoldierCardBonus += 2;
    }
    else if ( self.SoldierCardBonus == 12 )
    {
        self.SoldierCardBonus = 15;
    }
    else
    {
        self.SoldierCardBonus += 5;
    }
}
- (Message*) didReceivePlaceSoldierInCountry:(Country *)country fromPlayer:(Player *)player
{
    if ( country.owner != player || player.soldiersToPlaceOnBoard == 0 )
    {
        return [[Message alloc] initAsInvalidCommand];
    }
    
    country.numSoldiers++;
    player.soldiersToPlaceOnBoard--;
    return [self getHowManySoldiersLeftToPlaceOrNextPhaseMessageForPlayer:player];
}
- (Message*) getHowManySoldiersLeftToPlaceOrNextPhaseMessageForPlayer:(Player *)player
{
    if ( player.soldiersToPlaceOnBoard == 0 )
    {
        //  move to next phase once zero left
        return [[ChooseACountryToAttackMessage alloc] initForPlayer:player];
    }
    return [[GiveSoldierMessage alloc] initWithSoldiers:player.soldiersToPlaceOnBoard ToGiveToPlayer:player];
}
//////////


//  B2  //
- (Message*) didReceiveAttackFromPlayer:(Player *)player countryA:(Country *)countryA countryB:(Country *)countryB
{
    Country* attacker;
    Country* defender;
    
    if ( countryA.owner == player )
    {
        attacker = countryA;
        defender = countryB;
    }
    else
    {
        attacker = countryB;
        defender = countryA;
    }

    //  if a player owns neither country or both, its invalid
    if ( attacker.owner != player || defender.owner == player )
    {
        return [[Message alloc] initAsInvalidCommand];
    }
    
    return [[HowManyDiceToAttackWithMessage alloc] initWithAskingPlayer:player andMaxDice:[self getMaxNumberOfAttackDiceFromCountry:attacker]];
}
- (int) getMaxNumberOfAttackDiceFromCountry:(Country *)country
{
    return ( country.numSoldiers > 3 ) ? 3: country.numSoldiers;
}
//////////

//  B3  //
- (Message*) didReceiveMove:(int)numberOfTroopsToMove TroopsFromCountry:(Country *)countryA toCountry:(Country *)countryB
{
    if ( countryA.owner != countryB.owner || numberOfTroopsToMove >= countryA.numSoldiers || ![self country:countryA isConnectedTo:countryB] )
    {
        return [[Message alloc] initAsInvalidCommand];
    }
    
    countryA.numSoldiers -= numberOfTroopsToMove;
    countryB.numSoldiers += numberOfTroopsToMove;
    
    return [self didFinishMovingTroops:countryA.owner];
}
- (BOOL) country:(Country *)countryA isConnectedTo:(Country *)countryB
{
    //  if both countries are the same, theyre obviously connected
    if ( countryA == countryB )
    {
        return true;
    }
    
    for ( Country* country in countryA.connectedCountries )
    {
        //  otherwise, if a neighbor of A owned by same owner is connected to B, they are connected
        if ( countryA.owner == country.owner && [self country:country isConnectedTo:countryB] )
        {
            return true;
        }
    }
    return false;
}
- (Message*) didFinishMovingTroops:(Player *)player
{
    
}
//////////


@end