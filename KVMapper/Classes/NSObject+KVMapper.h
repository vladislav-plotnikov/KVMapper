//
//  NSObject+KVMapper.h
//  KVMapper
//
//  Created by Vladislav Plotnikov on 25.04.2018.
//  Copyright © 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVObject: NSObject

@property NSString  *fromKeyPath;
@property NSString  *toKeyPath;
@property Class     expectedClass;

+ (instancetype)fromKeyPath:(NSString *)fromKeyPath
                  toKeyPath:(NSString *)toKeyPath
              expectedClass:(Class)expectedClass;

@end

@protocol KVMappable

@required
- (NSArray<KVObject *> *)getMapArray;

@optional
- (NSArray<KVObject *> *)getMapArrayForIdentifier:(NSString *)identifier;

@end

@interface NSObject (MapJSON)

+ (instancetype)objectFromJSON:(NSDictionary *)json;

+ (instancetype)objectFromJSON:(NSDictionary *)json
                    identifier:(NSString *)identifier;

- (instancetype)initWithJSON:(NSDictionary *)json;

- (instancetype)initWithJSON:(NSDictionary *)json
                  identifier:(NSString *)identifier;

- (void)parseWithOptions:(NSArray<KVObject *> *)options
					json:(NSDictionary *)json;

@end
