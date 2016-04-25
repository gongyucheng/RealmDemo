//
//  ViewController.m
//  RealmDemo
//
//  Created by gary on 16/4/20.
//  Copyright © 2016年 gary. All rights reserved.
//

#import "ViewController.h"
#import <Realm/Realm.h>
#import "Personl.h"
#import "UserPhoto.h"
@interface ViewController ()
@property(nonatomic,weak)IBOutlet UITextField *nameField;
@property(nonatomic,weak)IBOutlet UITextField *ageField;
@property(nonatomic,weak)IBOutlet UITextField *idField;
@property(nonatomic,weak)IBOutlet UIImageView *imageView;
-(IBAction)add:(id)sender;
-(IBAction)delete:(id)sender;
-(IBAction)xiugai:(id)sender;
-(IBAction)chaxun:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)add:(id)sender
{
//    Personl *people = [Personl new];
//    people.name = @"Jackson";
//    people.age = 30;

    UIImage *image=[UIImage imageNamed:@"236"];
    // 创建对象
    Personl *author = [[Personl alloc] init];
    //author.name    = @"大卫·福斯特·华莱士";
    author.name=self.nameField.text;
    author.age=[self.ageField.text integerValue];
    author.ID=[self.idField.text integerValue];

    
    
    
    
    // 获取默认的 Realm 实例
    RLMRealm *realm = [RLMRealm defaultRealm];
    // 每个线程只需要使用一次即可
    for (int i=0; i<100; i++)
    {
        NSData *data=UIImagePNGRepresentation(image);
        UserPhoto * user=[[UserPhoto alloc]init];
        user.photoData=data;
        // 通过事务将数据添加到 Realm 中
        [realm beginWriteTransaction];
        [realm addObject:user];
        //[realm addOrUpdateObject:user];
        [realm commitWriteTransaction];
    }
    
}
-(void)delete:(id)sender
{
    NSLog(@"delete-------------");
    RLMResults *people = [UserPhoto allObjects];
    
    RLMRealm *realm = [RLMRealm defaultRealm];

    if (people != nil)
    {
        [realm beginWriteTransaction];
        [realm deleteObjects:people];
        [realm commitWriteTransaction];
    }

    
}
-(void)xiugai:(id)sender
{
    
}
-(void)chaxun:(id)sender
{
    RLMResults<UserPhoto *> *queryResults = [UserPhoto allObjects]; // 从默认的 Realm 数据库中，检索所有狗狗
   // NSLog(@"dogs====%lu",(unsigned long)dogs.count);
    NSLog(@"queryResults: \r %lu", (unsigned long)queryResults.count);
    if (queryResults != nil)
    {
//        for (UserPhoto *thesePeople in queryResults) {
//            NSLog(@"thesePeople: %@", thesePeople);
//////            self.nameLabel.text = thesePeople.name;
//////            self.ageLabel.text = thesePeople.age;
//        }
        UserPhoto *the=queryResults[0];
//        UIImage *image=[UIImage imageNamed:@"236"];
//        self.imageView.image=image;
        self.imageView.image=[UIImage imageWithData:the.photoData];
        
    }

    
}
@end
