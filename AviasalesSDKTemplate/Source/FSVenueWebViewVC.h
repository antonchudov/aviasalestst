//
//  FSVenueWebViewViC.h
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 12.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSVenueWebViewVC : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSString *venueUrl;
@end
