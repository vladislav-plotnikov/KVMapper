//
//  KVTestObject.m
//  KVMapper_Example
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import "KVTestObject.h"

@implementation KVTestObject

- (NSArray<KVObject *> *)getMapArray {
    return @[[KVObject fromKeyPath:@"name"
                         toKeyPath:@"name"
                     expectedClass:NSString.class]];
}

@end
