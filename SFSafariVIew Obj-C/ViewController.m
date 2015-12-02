//
//  ViewController.m
//  SFSafariVIew Obj-C
//
//  Created by aman jain on 02/12/15.
//  Copyright © 2015 aman jain. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>

@interface ViewController () <SFSafariViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SFSafariView:(id)sender
{
    NSString *urlString = @"http://www.digitalhole.co/";
    
    SFSafariViewController *sfViewControllr = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:urlString]];
    sfViewControllr.delegate = self;
    
    [self presentViewController:sfViewControllr animated:YES completion:^{
        
    }];
}

- (void)safariViewControllerDidFinish:(nonnull SFSafariViewController *)controller
{
    [controller dismissViewControllerAnimated:YES completion:nil];
}


@end
