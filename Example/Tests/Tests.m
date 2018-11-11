//
//  KVMappingTests.m
//  KVMappingTests
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright (c) 2018 Vladislav Plotnikov. All rights reserved.
//

// https://github.com/Specta/Specta

#import <Specta.h>
#import <Expecta.h>

SpecBegin(InitialSpecs)

//describe(@"these will fail", ^{
//
//    it(@"can do maths", ^{
//        expect(1).to.equal(1);
//    });
//
//    it(@"can read", ^{
//        expect(@"number").to.equal(@"number");
//    });
//    
////    it(@"will wait for 10 seconds and fail", ^{
////        waitUntil(^(DoneCallback done) {
////
////        });
////    });
//});

describe(@"these will pass", ^{
    
    it(@"can do maths", ^{
        expect(1).beLessThan(23);
    });
    
    it(@"can read", ^{
        expect(@"team").toNot.contain(@"I");
    });
    
    it(@"will wait and succeed", ^{
        waitUntil(^(DoneCallback done) {
            done();
        });
    });
});

SpecEnd

