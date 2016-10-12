//
//  FSConnector.h
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 11.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FSConnectorDelegate <NSObject>

-(void) FSConnectorDidReciveData:(NSArray <NSDictionary *>*) data;

@end

@interface FSCoordinate :NSObject
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;

-(instancetype) initWithLatitude:(double) lat andLongitude:(double)lon;

@end

@interface FSConnector : NSObject

@property (nonatomic, weak) id<FSConnectorDelegate> delegate;

@end
