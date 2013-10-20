//
//  SHCViewController.m
//  UITextField-Blocks Example
//
//  Created by Eivind Bohler on 20.10.13.
//  Copyright (c) 2013 Shortcut. All rights reserved.
//

#import "SHCViewController.h"
#import "UITextField+Blocks.h"

@interface SHCViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SHCViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.textField.didBeginEditingBlock = ^(UITextField *textField){
        NSLog(@"%s", __PRETTY_FUNCTION__);
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
