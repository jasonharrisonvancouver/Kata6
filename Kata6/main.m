//
//  main.m
//  Kata6
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MultiplicationTableBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:1]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:5]);
        NSLog(@"\n%@", [MultiplicationTableBuilder drawTable:10]);
    }
    return 0;
}
