//
//  KVTestObject.h
//  KVMapping_Example
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <KVMapping/KVMapping.h>

@class KVInnerObject;

@interface KVTestObject : NSObject <KVMappable>

@property (readonly) NSString *name;
@property (readonly) NSNumber *number;
@property (readonly) BOOL boolValue;
@property (readonly) NSInteger integerValue;
@property (readonly) double doubleValue;

@property (readonly) KVInnerObject *innerObject;

@end
