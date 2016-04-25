//
//  UserPhoto.h
//  RealmDemo
//
//  Created by gary on 16/4/21.
//  Copyright © 2016年 gary. All rights reserved.
//

#import <Realm/Realm.h>

@interface UserPhoto : RLMObject
@property NSData *photoData;
@end

// This protocol enables typed collections. i.e.:
// RLMArray<UserPhoto>
RLM_ARRAY_TYPE(UserPhoto)
