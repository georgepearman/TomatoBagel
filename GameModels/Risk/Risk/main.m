//
//  main.m
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RiskModel.h"
#import "MessageInterpreter.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        printf( "ThisIsADummyMessageFromRunRisk\n" );
//        MessageInterpreter* messInt = [[MessageInterpreter alloc] initWithString:[NSString stringWithUTF8String:argv[1]]];
//        RiskModel* game = [[RiskModel alloc] initWithDataFile:[messInt getGameId]];
//        Message* result = [game importMessage:messInt.messageInChunks];
    }
    return 0;
}