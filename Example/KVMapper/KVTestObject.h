//
//  KVTestObject.h
//  KVMapper_Example
//
//  Created by Vladislav Plotnikov on 11/11/2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <KVMapper/KVMapper.h>

@interface KVTestObject : NSObject <KVMappable>

@property (readonly) NSString *name;

@end
