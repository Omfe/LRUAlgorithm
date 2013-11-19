//
//  LRUMatrix.h
//  LRUAlgorithm
//
//  Created by Omar Gudino on 11/17/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LRUMatrix : NSObject {
    NSMutableArray *matrix;
}

- initWithZeros;
+ matrixArrayWithSections;
- (void)setObject:(NSString *) string inSection:(NSInteger)s row:(NSInteger)r;
- (NSString *)printMatrix;

@end
