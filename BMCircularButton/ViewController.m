//
//  ViewController.m
//  BMCircularButton
//
//  Created by Brandon Millman on 10/28/12.
//  Copyright (c) 2012 Brandon Millman. All rights reserved.
//

#import "ViewController.h"

#import "BMCircularButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    BMCircularButton *button = [BMCircularButton buttonWithCenter:CGPointMake(100, 100) withRadius:50];
    
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
