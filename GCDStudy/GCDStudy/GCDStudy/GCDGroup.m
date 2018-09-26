//
//  GCDGroup.m
//  GCDStudy
//
//  Created by cuiyinjiang on 2018/9/26.
//  Copyright © 2018 cuiyinjiang. All rights reserved.
//

#import "GCDGroup.h"

@implementation GCDGroup
- (void)run {
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async(group, queue, ^{
        NSLog(@"1");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"2");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"3");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"4");
    });
    
    dispatch_group_notify(group, queue, ^{
        NSLog(@"finished");
    });
    NSLog(@"run");

}

- (void)runEnter {
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_group_enter(group);
    dispatch_async(queue, ^{
        NSLog(@"1");
        dispatch_group_leave(group);
    });
    dispatch_group_enter(group);

    dispatch_async(queue, ^{
        NSLog(@"2");
        dispatch_group_leave(group);
    });
    dispatch_group_enter(group);

    dispatch_async(queue, ^{
        NSLog(@"3");
        dispatch_group_leave(group);
    });
    dispatch_group_enter(group);

    dispatch_async(queue, ^{
        NSLog(@"4");
        dispatch_group_leave(group);
    });
    dispatch_group_notify(group, queue, ^{
        NSLog(@"finished");
    });
    NSLog(@"runEnter");

}

- (void)runWait {
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async(group, queue, ^{
        NSLog(@"1");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"2");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"3");
    });
    dispatch_group_async(group, queue, ^{
        NSLog(@"4");
    });
    
    dispatch_group_notify(group, queue, ^{
        NSLog(@"finished");
    });
    NSLog(@"before wait");
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    NSLog(@"after wait");
}
@end
