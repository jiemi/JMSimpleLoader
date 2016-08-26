//
//  ViewController.m
//  JMLoadButton
//
//  Created by 萧锐杰 on 16/8/25.
//  Copyright © 2016年 萧锐杰. All rights reserved.
//

#import "ViewController.h"
#import "JMSimpleLoader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
   
    
    JMSimpleLoader *view1 = [[JMSimpleLoader alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    [self.view addSubview:view1];
     self.view.backgroundColor = [UIColor colorWithRed:81 green:88 blue:128 alpha:1];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
