//
//  ViewController.m
//  iphone_1
//
//  Created by PanJingtian on 4/17/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) click1 {
    display.text = @"1";
}

@end
