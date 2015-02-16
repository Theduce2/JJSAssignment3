//
//  ViewController.m
//  JJSAssignment 3
//
//  Created by jsanto on 2/15/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [webview loadRequest:[NSURLRequest  requestWithURL:[NSURL URLWithString:@"http:www.pitt.edu"]]];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBar: (UISearchBar *)searchBar {
    [searchBar resignFirstResponder];
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"HTTP://%@",searchBar.text]]]];
   
}


@end
