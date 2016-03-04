//
//  PersonMonitor.m
//  KVO
//
//  Created by CYJ on 15/11/16.
//  Copyright © 2015年 CYJ. All rights reserved.
//

#import "PersonMonitor.h"

@implementation PersonMonitor

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    
    if ([keyPath isEqual:@"name"]) {
        NSLog(@"改变 old:%@, new%@; conttext = %@", [change objectForKey:NSKeyValueChangeOldKey], [change objectForKey:NSKeyValueChangeNewKey], context);
    }
}

@end
