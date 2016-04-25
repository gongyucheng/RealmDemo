//
//  Dog.h
//  RealmDemo
//
//  Created by gary on 16/4/20.
//  Copyright © 2016年 gary. All rights reserved.
//

#import <Realm/Realm.h>
@class Personl;
@interface Dog : RLMObject
@property NSString * name;
@property Personl * owner;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Dog>
RLM_ARRAY_TYPE(Dog)
