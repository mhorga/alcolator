//
//  MainMenuViewController.m
//  Alcolator
//
//  Created by Marius Horga on 11/20/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@property (weak, nonatomic) UIButton *wineButton;
@property (weak, nonatomic) UIButton *whiskeyButton;

@end

@implementation MainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Allocate and initialize the all-encompassing view
    self.view = [[UIView alloc] init];
    
    // Allocate and initialize each of our views
    UIButton *buttonForWine = [UIButton buttonWithType:UIButtonTypeSystem];
    UIButton *buttonForWhiskey = [UIButton buttonWithType:UIButtonTypeSystem];
    
    // Add each view as the view's subviews
    [self.view addSubview:buttonForWine];
    [self.view addSubview:buttonForWhiskey];
    
    // Assign the views and targets to our properties
    [self.wineButton addTarget:self action:@selector(winePressed:) forControlEvents:UIControlEventTouchUpInside];
    self.wineButton = buttonForWine;
    [self.whiskeyButton addTarget:self action:@selector(whiskeyPressed:) forControlEvents:UIControlEventTouchUpInside];
    self.whiskeyButton = buttonForWhiskey;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) winePressed:(UIButton *) sender {
    ViewController *wineVC = [[ViewController alloc] init];
    [self.navigationController pushViewController:wineVC animated:YES];
}

- (void) whiskeyPressed:(UIButton *) sender {
    WhiskeyViewController *whiskeyVC = [[WhiskeyViewController alloc] init];
    [self.navigationController pushViewController:whiskeyVC animated:YES];
}

@end