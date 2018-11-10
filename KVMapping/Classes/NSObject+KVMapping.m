//
//  NSObject+KVMapping.m
//  KVMapping
//
//  Created by Vladislav Plotnikov on 25.04.2018.
//  Copyright © 2018 Vladislav Plotnikov. All rights reserved.
//

#import "NSObject+KVMapping.h"

@implementation KVObject

+ (instancetype)fromKeyPath:(NSString *)fromKey
                  toKeyPath:(NSString *)toKey
              expectedClass:(Class)expectedClass {
    KVObject *object;
    if ((object = [KVObject new])) {
        object.fromKeyPath      = fromKey;
        object.toKeyPath        = toKey;
        object.expectedClass    = expectedClass;
    }
    return object;
}

@end

@implementation NSObject (MapJSON)

+ (instancetype)objectFromJSON:(NSDictionary *)json {
    return [[self alloc] initWithJSON:json];
}

+ (instancetype)objectFromJSON:(NSDictionary *)json
                    identifier:(NSString *)identifier {
    return [[self alloc] initWithJSON:json
                           identifier:identifier];
}

- (instancetype)initWithJSON:(NSDictionary *)json
                  identifier:(NSString *)identifier {
    if (self = [self init]) {
        if ([self conformsToProtocol:@protocol(KVMappable)]) {
            id parsableSelf = (id<KVMappable>)self;
            [parsableSelf parseWithOptions:[parsableSelf getMapArrayForIdentifier:identifier]
                                      json:json];
        } else {
            NSAssert(YES, @"Object doesn't conform to JSONParsable protocol");
        }
    }
    return self;
}

- (instancetype)initWithJSON:(NSDictionary *)json {
    if (self = [self init]) {
        if ([self conformsToProtocol:@protocol(KVMappable)]) {
            id parsableSelf = (id<KVMappable>)self;
            [parsableSelf parseWithOptions:[parsableSelf getMapArray]
                                      json:json];
        } else {
            NSAssert(YES, @"Object doesn't conform to JSONParsable protocol");
        }
    }
    return self;
}

- (void)parseWithOptions:(NSArray<KVObject *> *)options
                    json:(NSDictionary *)json {
    for (KVObject *option in options) {
        
        if ([option.expectedClass conformsToProtocol:@protocol(KVMappable)]) {
            
            if ([[json valueForKeyPath:option.fromKeyPath] isKindOfClass:NSArray.class]) {
                
                NSMutableArray *array = [NSMutableArray array];
                for (NSDictionary *object in [json valueForKeyPath:option.fromKeyPath]) {
                    [array addObject:[[option.expectedClass alloc] initWithJSON:object]];
                }
                [self setValue:array.copy
                    forKeyPath:option.toKeyPath];
                
            } else if ([[json valueForKeyPath:option.fromKeyPath] isKindOfClass:NSDictionary.class]) {
                [self setValue:[[option.expectedClass alloc] initWithJSON:[json valueForKeyPath:option.fromKeyPath]]
                    forKeyPath:option.toKeyPath];
            }
        } else if ([[json valueForKeyPath:option.fromKeyPath] isKindOfClass:option.expectedClass]) {
            [self setValue:[json valueForKeyPath:option.fromKeyPath]
                forKeyPath:option.toKeyPath];
        }
    }
}

- (NSArray<KVObject *> *)getMapArrayForIdentifier:(NSString *)identifier {
    if ([self conformsToProtocol:@protocol(KVMappable)]) {
        id parsableSelf = (id<KVMappable>)self;
        return [parsableSelf getMapArray];
    } else {
        NSAssert(YES, @"Object doesn't conform to JSONParsable protocol");
        return nil;
    }
}

@end

