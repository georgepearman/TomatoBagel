//
//  main.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RiskModel.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        RiskModel* game = [[RiskModel alloc] initWithNewGame];
        ((Country* )[game.countries objectAtIndex:0]).name = @"hahah";
        
        if ([NSKeyedArchiver archiveRootObject:game toFile:@"/Users/George/Dropbox/GithubRepos/TomatoBagel/GameData/data"] )
        {
            NSLog(@"yes");
        }
        else
        {
            NSLog(@"no");
        }
        
        RiskModel* game2 = [[RiskModel alloc] initWithDataFile:@"/Users/George/Dropbox/GithubRepos/TomatoBagel/GameData/data" andMessage:[[Message alloc] initAsInvalidCommand]];
        
        NSLog(@"%@", ((Country*) [game2.countries objectAtIndex:0]).name);
        
    }
    return 0;
}

