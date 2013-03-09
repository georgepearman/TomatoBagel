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
    
    [Alberta connectToCountry:Alaska];
    [Alberta connectToCountry:NorthwestTerritory];
    [Alberta connectToCountry:Ontario];
    [Alberta connectToCountry:WesternUnitedStates];
    
    [CentralAmerica connectToCountry:WesternUnitedStates];
    [CentralAmerica connectToCountry:EasternUnitedStates];
    [CentralAmerica connectToCountry:Venezeula];
    
    [EasternUnitedStates connectToCountry:Ontario];
    [EasternUnitedStates connectToCountry:WesternUnitedStates];
    [EasternUnitedStates connectToCountry:CentralAmerica];
    [EasternUnitedStates connectToCountry:Quebec];
    
    [Greenland connectToCountry:Quebec];
    [Greenland connectToCountry:Ontario];
    [Greenland connectToCountry:NorthwestTerritory];
    [Greenland connectToCountry:Iceland];
    
    [NorthwestTerritory connectToCountry:Alaska];
    [NorthwestTerritory connectToCountry:Alberta];
    [NorthwestTerritory connectToCountry:Ontario];
    [NorthwestTerritory connectToCountry:Greenland];
    
    [Ontario connectToCountry:Alberta];
    [Ontario connectToCountry:NorthwestTerritory];
    [Ontario connectToCountry:Greenland];
    [Ontario connectToCountry:Quebec];
    [Ontario connectToCountry:EasternUnitedStates];
    [Ontario connectToCountry:WesternUnitedStates];
    
    [Quebec connectToCountry:Ontario];
    [Quebec connectToCountry:EasternUnitedStates];
    [Quebec connectToCountry:Greenland];
    
    [WesternUnitedStates connectToCountry:Alberta];
    [WesternUnitedStates connectToCountry:Ontario];
    [WesternUnitedStates connectToCountry:EasternUnitedStates];
    [WesternUnitedStates connectToCountry:CentralAmerica];
    
    [Argentina connectToCountry:Peru];
    [Argentina connectToCountry:Brazil];
    
    [Brazil connectToCountry:Peru];
    [Brazil connectToCountry:Venezeula];
    [Brazil connectToCountry:Argentina];
    [Brazil connectToCountry:NorthAfrica];
    
    [Peru connectToCountry:Argentina];
    [Peru connectToCountry:Brazil];
    [Peru connectToCountry:Venezeula];
    
    [Venezeula connectToCountry:CentralAmerica];
    [Venezeula connectToCountry:Peru];
    [Venezeula connectToCountry:Brazil];
    
    [GreatBritain connectToCountry:Iceland];
    [GreatBritain connectToCountry:Scandinavia];
    [GreatBritain connectToCountry:NorthernEurope];
    [GreatBritain connectToCountry:WesternEurope];
    
    [Iceland connectToCountry:Greenland];
    [Iceland connectToCountry:GreatBritain];
    [Iceland connectToCountry:Scandinavia];
    
    [NorthernEurope connectToCountry:GreatBritain];
    [NorthernEurope connectToCountry:Scandinavia];
    [NorthernEurope connectToCountry:Ukraine];
    [NorthernEurope connectToCountry:SouthernEurope];
    [NorthernEurope connectToCountry:WesternEurope];
    
    [Scandinavia connectToCountry:Iceland];
    [Scandinavia connectToCountry:GreatBritain];
    [Scandinavia connectToCountry:NorthernEurope];
    [Scandinavia connectToCountry:Ukraine];
    
    [SouthernEurope connectToCountry:WesternEurope];
    [SouthernEurope connectToCountry:NorthernEurope];
    [SouthernEurope connectToCountry:Ukraine];
    [SouthernEurope connectToCountry:MiddleEast];
    [SouthernEurope connectToCountry:Egypt];
    [SouthernEurope connectToCountry:NorthAfrica];
    
    [Ukraine connectToCountry:Scandinavia];
    [Ukraine connectToCountry:NorthernEurope];
    [Ukraine connectToCountry:SouthernEurope];
    [Ukraine connectToCountry:MiddleEast];
    [Ukraine connectToCountry:Afghanistan];
    [Ukraine connectToCountry:Ural];
    
    [WesternEurope connectToCountry:NorthAfrica];
    [WesternEurope connectToCountry:GreatBritain];
    [WesternEurope connectToCountry:NorthernEurope];
    [WesternEurope connectToCountry:SouthernEurope];
    
    [Congo connectToCountry:NorthAfrica];
    [Congo connectToCountry:EastAfrica];
    [Congo connectToCountry:SouthAfrica];
    
    [EastAfrica connectToCountry:Egypt];
    [EastAfrica connectToCountry:NorthAfrica];
    [EastAfrica connectToCountry:Congo];
    [EastAfrica connectToCountry:Madagascar];
    [EastAfrica connectToCountry:MiddleEast];
    
    [Egypt connectToCountry:NorthAfrica];
    [Egypt connectToCountry:EastAfrica];
    [Egypt connectToCountry:MiddleEast];
    [Egypt connectToCountry:SouthernEurope];
    
    [Madagascar connectToCountry:EastAfrica];
    [Madagascar connectToCountry:SouthAfrica];
    
    [NorthAfrica connectToCountry:Brazil];
    [NorthAfrica connectToCountry:WesternEurope];
    [NorthAfrica connectToCountry:SouthernEurope];
    [NorthAfrica connectToCountry:Egypt];
    [NorthAfrica connectToCountry:EastAfrica];
    [NorthAfrica connectToCountry:Congo];
    
    [SouthAfrica connectToCountry:Congo];
    [SouthAfrica connectToCountry:EastAfrica];
    [SouthAfrica connectToCountry:Madagascar];
    
    [Afghanistan connectToCountry:Ukraine];
    [Afghanistan connectToCountry:MiddleEast];
    [Afghanistan connectToCountry:India];
    [Afghanistan connectToCountry:China];
    [Afghanistan connectToCountry:Ural];
    
    [China connectToCountry:Siam];
    [China connectToCountry:India];
    [China connectToCountry:Afghanistan];
    [China connectToCountry:Ural];
    [China connectToCountry:Siberia];
    [China connectToCountry:Mongolia];
    
    [India connectToCountry:MiddleEast];
    [India connectToCountry:Afghanistan];
    [India connectToCountry:China];
    [India connectToCountry:Siam];
    
    [Irkutsk connectToCountry:Siberia];
    [Irkutsk connectToCountry:Yakutsk];
    [Irkutsk connectToCountry:Kamchatka];
    [Irkutsk connectToCountry:Mongolia];
    
    [Japan connectToCountry:Kamchatka];
    [Japan connectToCountry:Mongolia];
    
    [Kamchatka connectToCountry:Yakutsk];
    [Kamchatka connectToCountry:Alaska];
    [Kamchatka connectToCountry:Japan];
    [Kamchatka connectToCountry:Mongolia];
    [Kamchatka connectToCountry:Irkutsk];
    
    [MiddleEast connectToCountry:EastAfrica];
    [MiddleEast connectToCountry:Egypt];
    [MiddleEast connectToCountry:SouthernEurope];
    [MiddleEast connectToCountry:Ukraine];
    [MiddleEast connectToCountry:Afghanistan];
    [MiddleEast connectToCountry:India];
    
    [Mongolia connectToCountry:Japan];
    [Mongolia connectToCountry:Kamchatka];
    [Mongolia connectToCountry:Irkutsk];
    [Mongolia connectToCountry:Siberia];
    [Mongolia connectToCountry:China];
    
    [Siam connectToCountry:China];
    [Siam connectToCountry:India];
    [Siam connectToCountry:Indonesia];
    
    [Siberia connectToCountry:Ural];
    [Siberia connectToCountry:China];
    [Siberia connectToCountry:Mongolia];
    [Siberia connectToCountry:Irkutsk];
    [Siberia connectToCountry:Yakutsk];
    
    [Ural connectToCountry:Ukraine];
    [Ural connectToCountry:Afghanistan];
    [Ural connectToCountry:China];
    [Ural connectToCountry:Siberia];
    
    [Yakutsk connectToCountry:Siberia];
    [Yakutsk connectToCountry:Irkutsk];
    [Yakutsk connectToCountry:Kamchatka];
    
    [EasternAustralia connectToCountry:WesternAustralia];
    [EasternAustralia connectToCountry:NewGuinea];
    
    [Indonesia connectToCountry:Siam];
    [Indonesia connectToCountry:NewGuinea];
    [Indonesia connectToCountry:WesternAustralia];
    
    [NewGuinea connectToCountry:Indonesia];
    [NewGuinea connectToCountry:WesternAustralia];
    [NewGuinea connectToCountry:EasternAustralia];
    
    [WesternAustralia connectToCountry:Indonesia];
    [WesternAustralia connectToCountry:NewGuinea];
    [WesternAustralia connectToCountry:EasternAustralia];

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



//  B1
- (Message*) didRecieveCardUseMessageFromPlayer: (Player*) player WithCards: (SoldierCard*) card1: (SoldierCard*) card2: (SoldierCard*) card3
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
        
        //  make a message to return
        Message* message = [[GiveSoldierMessage alloc] initWithSoldiers:self.SoldierCardBonus ToGiveToPlayer:player];
        
        //  increase the bonus for the next set that is turned in
        [self increaseSoldierCardBonus];
        
        return message;
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


@end