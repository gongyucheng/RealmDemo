//
//  Personl.h
//  RealmDemo
//
//  Created by gary on 16/4/20.
//  Copyright © 2016年 gary. All rights reserved.
//

#import <Realm/Realm.h>
#import "Dog.h"
#import "UserPhoto.h"
@interface Personl : RLMObject
@property NSString *name;
@property NSInteger age;
@property NSInteger ID;
@property NSDate *birthDate;
//@property RLMArray<Dog> *dogs;
@property RLMArray<UserPhoto> *dogs;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<Personl>
RLM_ARRAY_TYPE(Personl)
