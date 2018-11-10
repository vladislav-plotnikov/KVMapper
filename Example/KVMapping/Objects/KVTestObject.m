//
//  KVTestObject.m
//  KVMapping_Example
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import "KVTestObject.h"
#import "KVInnerObject.h"

@implementation KVTestObject

- (NSArray<KVObject *> *)getMapArray {
    return @[[KVObject fromKeyPath:@"name"
                         toKeyPath:@"name"
                     expectedClass:NSString.class],
             [KVObject fromKeyPath:@"number"
                         toKeyPath:@"number"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"boolValue"
                         toKeyPath:@"boolValue"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"integerValue"
                         toKeyPath:@"integerValue"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"doubleValue"
                         toKeyPath:@"doubleValue"
                     expectedClass:NSNumber.class],
             [KVObject fromKeyPath:@"innerObject"
                         toKeyPath:@"innerObject"
                     expectedClass:KVInnerObject.class]];
}

@end
