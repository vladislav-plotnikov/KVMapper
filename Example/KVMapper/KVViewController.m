//
//  KVViewController.m
//  KVMapper
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
    
    KVTestObject *object = [KVTestObject objectFromJSON:@{@"name" : @"TEST"}];
    NSLog(@"Test object name is: %@", object.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
