//
//  MultiplicationTableBuilder.h
//  Kata6
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MultiplicationTableBuilder : NSObject
//+ (void) addRow:(int) v withDashes:(int) dashes;
+ (void) addRow:(int) v withDashes:(int) dashes intoString:(NSMutableString**)table;


+ (NSString *)drawTable:(int)maxValue;

@end

NS_ASSUME_NONNULL_END
