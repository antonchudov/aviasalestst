//
//  FSVenueWebViewViC.m
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 12.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//

#import "FSVenueWebViewVC.h"

@interface FSVenueWebViewVC ()

@end

@implementation FSVenueWebViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.venueUrl]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
