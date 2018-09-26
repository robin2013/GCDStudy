//
//  ViewController.m
//  GCDStudy
//
//  Created by cuiyinjiang on 2018/9/26.
//  Copyright © 2018 cuiyinjiang. All rights reserved.
//

#import "ViewController.h"
#import "GCDGroup.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GCDGroup *group = [GCDGroup new];
//    [group run];
    [group runEnter];
//    [group runWait];
}


@end
