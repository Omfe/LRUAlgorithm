//
//  LRUMatrix.m
//  LRUAlgorithm
//
//  Created by Omar Gudino on 11/17/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "LRUMatrix.h"

@implementation LRUMatrix

- (id)initWithZeros
{
    if ((self = [self init])) {
        matrix = [[NSMutableArray alloc] initWithCapacity:4];
        for (int i=0; i<4; i++) {
            NSMutableArray *a = [NSMutableArray arrayWithCapacity:4];
            for (int j = 0; j < 4; j++) {
                [a setObject:@"0" atIndexedSubscript:j];
                printf("0 ");
            }
            [matrix addObject:a];
            printf("\n");
        }
    }
    return self;
}

+ (id)matrixArrayWithSections
{
    return [[self alloc] initWithZeros];
}

- (void)setObject:(NSString *)string inSection:(NSInteger)s row:(NSInteger)r
{
    [[matrix objectAtIndex:s]replaceObjectAtIndex:r withObject:string];
}

- (NSString *)printMatrix
{
    NSString *printString = @"\n";
    
    for (int i = 0; i<4; i++) {
        for (int j = 0; j<4; j++) {
            printString = [NSString stringWithFormat:@"%@%@", printString, [[matrix objectAtIndex:i] objectAtIndex:j]];
        }
        printString = [NSString stringWithFormat:@"%@\n", printString];
    }
    return printString;
}

@end
