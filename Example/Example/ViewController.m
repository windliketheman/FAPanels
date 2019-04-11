//
//  ViewController.m
//  Example
//
//  Created by jia on 2019/4/11.
//  Copyright © 2019 jia. All rights reserved.
//

#import "ViewController.h"
#import "Example-Swift.h"
@import FAPanels;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Test *test = [[Test alloc] init];
//    [test show];
    
    FAPanelController *vc = [[FAPanelController alloc] init];
    self.panel.configs;
}


@end
