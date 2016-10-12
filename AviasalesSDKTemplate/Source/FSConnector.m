//
//  FSConnector.m
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 11.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//
#define FSClientId @"BKWOZRTFM0OSBP5NB2LDCVGPVOZ0OSJ4UDTUTLMUSHGG2YWF"
#define FSClientSecret @"ZU2BUNJWELK1JP24OYG33FS0ZYVT1JLGSTVGVBAEBLG2F0UA"

#import "FSConnector.h"

@implementation FSCoordinate

    -(instancetype) initWithLatitude:(double) lat andLongitude:(double)lon{
        
        self = [super init];
        _latitude = lat;
        _longitude = lon;
        
        return self;
    }




@end

@implementation FSConnector{
    
    
    NSMutableArray <NSDictionary *> *dataArray;
}


-(void)requestDataForPlaces:(NSArray <FSCoordinate *> *) places{
    
    dataArray = [NSMutableArray array];
    
    for(int i= 0;places.count;i++){
    
        
        
        NSString *requestUrlString = [NSString stringWithFormat:@"https://api.foursquare.com/v2/venues/explore?client_id=%@&client_secret=%@&v=20130815&ll=%1.2f,%1.2f&limit20",
                                       FSClientId, FSClientSecret, places[i].latitude, places[i].longitude];
        
        NSURL *url = [NSURL URLWithString: requestUrlString];
        
        NSURLSession *session = [NSURLSession sharedSession];
        [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            [self handleResponseData:data];
        }];
    }
}

- (void) handleResponseData: (NSData *) data{
    dispatch_async(dispatch_queue_create("FSParseData", nil), ^{
        NSError *error;
        NSDictionary *root = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
        NSDictionary *response = root[@"response"];
        NSArray *groups = response[@"groups"];
        NSDictionary *group = groups[0];
        NSArray <NSDictionary*>* items = group[@"items"];
        
        
        for(int i=0;i<items.count;i++){
            NSDictionary *venue = items[i][@"venue"];
            
            [dataArray addObject:venue];
        }
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [_delegate FSConnectorDidReciveData:dataArray];
        });
        
    });
    
}

@end
