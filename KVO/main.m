//
//  main.m
//  KVO
//
//  Created by CYJ on 15/11/16.
//  Copyright © 2015年 CYJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "PersonMonitor.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        
        PersonMonitor *pm = [[PersonMonitor alloc] init];
        
        /*
         *pm 对象注册KVO通知。观察者必须实现键值观察方法observeValueForKeyPath。
         *forKeyPath 关键路径,相对于接收器,用于观察的属性。这个值不能为零。
         *options NSKeyValueObservingOptions的组合值,指定包含在观察通知的内容。
         *context 任意的数据传递给anObserver在observeValueForKeyPath。
         */
        [p addObserver:pm forKeyPath:@"name" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:@"hello World"];
        
        [p setValue:@"王尼玛" forKey:@"name"];
        //查看设置后的值
        NSLog(@"p.name is %@",[p valueForKey:@"name"]);
        
        //效果和通过setValue 是一致的
        p.name=@"张全蛋";
        
        //通过person自己的函数来更改 name
        [p changeName];
        //最后一次修改是直接修改，所以没法产生通知。只有当我们调用KVC去访问key值的时候KVO才会起作用
        NSLog(@"p.name is %@",p.name);
        
        //删除观察者
        [p removeObserver:pm forKeyPath:@"name"];
        
    }
    return 0;
}
