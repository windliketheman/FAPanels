//
//  ViewController.m
//  FAPanel-Example
//
//  Created by jia on 2019/3/28.
//  Copyright © 2019 jia. All rights reserved.
//

#import "ViewController.h"
#import "FAPanel_Example-Swift.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Test *test = [[Test alloc] init];
    [test show];
    
//    [self.panel openLeftWithAnimated:YES];
}


@end
