//
//  Person.h
//  KVO
//
//  Created by CYJ on 15/11/16.
//  Copyright © 2015年 CYJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, retain)NSString *name;
@property (nonatomic, assign)NSInteger age;

- (void)changeName;


@end
