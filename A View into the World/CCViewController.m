//
//  CCViewController.m
//  A View into the World
//
//  Created by Eliot Arntz on 11/7/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);
    UIView *myView = [[UIView alloc] initWithFrame:myViewsFrame];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIButton *anotherButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    anotherButton.frame = CGRectMake(40, 40, 200, 100);
    anotherButton.backgroundColor = [UIColor greenColor];
    [anotherButton setTitle:@"Press me... Please!" forState:UIControlStateNormal];
    [self.view addSubview:anotherButton];
    
    [myView removeFromSuperview];
    
    [anotherButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];

}

-(void)didPressButton:(UIButton *)button
{
    NSLog(@"I'm doing everything in code now!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
