//
//  MultiplicationTableBuilder.m
//  Kata6
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "MultiplicationTableBuilder.h"




@implementation MultiplicationTableBuilder

+ (void) addRow:(int) v withDashes:(int) dashes intoString:(NSMutableString**)table{
    
    [*table appendString:@"+"];
    for(int i = 1; i <= v; i++){
        //NSLog(@"+");
        
        for(int j = 1; j <= dashes; j++){
            //NSLog(@"-");
            [*table appendString:@"-"];
        }
        [*table appendString:@"+"];
        //NSLog(@"+");
    }
}

+ (NSString *)drawTable:(int)maxValue{
    
    NSMutableString *table = [[NSMutableString alloc] init];
    
    int square = maxValue * maxValue;
    
    NSString *squareString = [NSString stringWithFormat:@"%d", square];
    
    int strLenOfLargestNumber = (int)[squareString length];
    int numberOfDashes = 2 + strLenOfLargestNumber;
    
    
    for(int i = 1; i <= maxValue; i++){
        
        
        [MultiplicationTableBuilder addRow:maxValue withDashes:numberOfDashes intoString:&table];
        
        [table appendString:@"\n"];
        for(int j = 1; j <= maxValue; j++){
            //NSLog(@"%i", i*j);
            int product = i * j;
            
            NSString *strProduct = [[NSString alloc] initWithFormat:@"| %i ", product];
            
            
 
            
            [table appendString:strProduct];
            
            // append "the rest of the empty spaces"
            NSString *productAsString = [NSString stringWithFormat:@"%i", product];
            int len = (int)[productAsString length];
            int numberSpacesLeft = numberOfDashes - 2 - len;
            
            for(int k = 0; k < numberSpacesLeft; k++){
                [table appendString:@" "];
            }
            
            
        }
        [table appendString:@"|\n"];
        
        
    }
    [MultiplicationTableBuilder addRow:maxValue withDashes:numberOfDashes intoString:&table];
    
    //NSLog(@"%i", strLenOfLargestNumber);
    
    
    return table;
    
    
}

@end
