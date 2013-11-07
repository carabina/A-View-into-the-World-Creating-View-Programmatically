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
    /* Create a CGRect struct using the C function CGRectMake. The order of numbers chosen is the x-coordinate, y-coordinate, height and width values. */
    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);
    /* Create a UIView object and use the custom initializer initWithFrame. InitWithFrame accepts a CGRect argument. We use the CGRect we just created named myViewsFrame. */
    UIView *myView = [[UIView alloc] initWithFrame:myViewsFrame];\
    /* Set the view's background color to be red */
    myView.backgroundColor = [UIColor redColor];
    /* Add the UIView object onto the background view that is automatically created with the ViewController */
    [self.view addSubview:myView];
    
    /* Create a UIButton object. Use the class method bottonWithType and select a RoundedRect button */
    UIButton *anotherButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    /* Set the button's frame property by creating a CGRect */
    anotherButton.frame = CGRectMake(40, 40, 200, 100);
    /* Set the button's background color to green. */
    anotherButton.backgroundColor = [UIColor greenColor];
    /* Set the button's title for state. We'll use the control state UIControlStateNormal. */
    [anotherButton setTitle:@"Press me... Please!" forState:UIControlStateNormal];
    /* Add the UIButton which is a subclass of UIView to the background view. */
    [self.view addSubview:anotherButton];
    
    /* Remove the UIView object from the background view */
    [myView removeFromSuperview];
    
    /* Create a target action for the UIButton object we created. In this case we set the target to be self. Specifically, the UIButton's target is this instance of the CCViewController class. The method that should evaluate is named didPressButton. Notice that we use the @selector keyword to let the compiler know we'll be choosing a method name. Also notice the colon which tells the compiler that there will be an argument for this method. We choose UIControlEventTouchUpInside which has been the default control event we've choose when creating IBActions. */
    [anotherButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];

}

/* Our method definition which should look very similiar to the IBAction's we have created in the past. Notice that instead of IBAction we use void since we are creating this method. IBAction is like void in that it does not return a value. However, IBAction helps the computer program understand that the action will be triggered by an element on our storyboard or nib file. */
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
