//
//  RiskModel.h
//  Risk
//
//  Created by George Pearman on 3/8/13.
//  Copyright (c) 2013 George Pearman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RiskModel : NSObject


- (id) initWithDataFile: (NSString*) dataFileName andMessage: (NSString*) message;
- (id) initWithNewGame;

- (BOOL) pullMessage: (NSString*) message;

-(BOOL) exportToDataFile;

@end
