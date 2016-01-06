//
//  ViewController.m
//  FrameworkDemo
//
//  Created by XuanPeng on 15/12/20.
//  Copyright © 2015年 AndyXuan. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import "TestViewController.h"

@interface ViewController ()

- (IBAction)p_btnPressed:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [Test testSuccess];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)p_btnPressed:(id)sender {
    UIView *btn = sender;
    if (btn.alpha >= 1.0f) {
        [Test alphaAnimationWithView:btn fromValue:@(btn.alpha) toValue:@(0.2f) duration:1.0f forKey:@"Test" completionBlock:nil];
    } else {
        [Test alphaAnimationWithView:btn fromValue:@(btn.alpha) toValue:@(1.0f) duration:1.0f forKey:@"Test" completionBlock:nil];
    }
    
    TestViewController *viewController = [[TestViewController alloc] initWithNibName:@"TestViewController"
                                                                              bundle:[NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"FrameworkDemoResource"
                                                                                                                                     withExtension:@"bundle"]]];
    [self.navigationController pushViewController:viewController animated:true];
    
}
@end
