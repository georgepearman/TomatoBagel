//
//  main.m
//  GameDelegate
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* output = [NSTask launchedTaskWithLaunchPath:@"/Users/George/Dropbox/GithubRepos/TomatoBagel/GameModels/RunRisk" arguments:[NSArray arrayWithObject:[NSString stringWithFormat:@"%s", argv[0]]]];
        NSLog(@"%@", output );
        
    }
    return 0;
}