//
//  KVViewController.m
//  KVMapping
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright (c) 2018 Vladislav Plotnikov. All rights reserved.
//

#import "KVViewController.h"
#import "KVTestObject.h"

@interface KVViewController ()

@end

@implementation KVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    KVTestObject *object = [KVTestObject objectFromJSON:[self getTestDictionary]];
    NSLog(@"Test object name is: %@", object.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSDictionary *)getTestDictionary {
    return @{
             @"name"            : @"Object",
             @"number"          : @10,
             @"boolValue"       : @YES,
             @"integerValue"    : @1000,
             @"doubleValue"     : @11111.111111,
             @"innerObject"     : @{
                     @"name"            : @"inner",
                     @"number"          : @20,
                     @"boolValue"       : @NO,
                     @"integerValue"    : @2000,
                     @"doubleValue"     : @222222.22222
                     },
             @"objectArray"     : @[
                     @{
                         @"name"            : @"One",
                         @"number"          : @1,
                         @"boolValue"       : @NO,
                         @"integerValue"    : @1000,
                         @"doubleValue"     : @111111111.111111
                         },
                     @{
                         @"name"            : @"Two",
                         @"number"          : @2,
                         @"boolValue"       : @NO,
                         @"integerValue"    : @2000,
                         @"doubleValue"     : @222222.22222
                         },
                     @{
                         @"name"            : @"Three",
                         @"number"          : @3,
                         @"boolValue"       : @NO,
                         @"integerValue"    : @3000,
                         @"doubleValue"     : @333333.333333
                         }
                     ]
             };
}

@end
