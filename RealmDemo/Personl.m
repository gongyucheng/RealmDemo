//
//  Personl.m
//  RealmDemo
//
//  Created by gary on 16/4/20.
//  Copyright © 2016年 gary. All rights reserved.
//

#import "Personl.h"

@implementation Personl
+ (NSString *)primaryKey {
    return @"ID";
}
// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

@end
