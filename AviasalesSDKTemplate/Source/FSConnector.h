//
//  FSConnector.h
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 11.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FSCoordinate :NSObject
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
-(instancetype) initWithLatitude:(double) lat andLongitude:(double)lon;

@end

@interface FSItem : NSObject
@property (nonatomic, strong) NSString* itemName;
@property (nonatomic, strong) NSString* categoryName;
@property (nonatomic, strong) NSString* imagePath;
@property (nonatomic, strong) NSData *imageData;
@property (nonatomic, strong) NSString* venueUrl;


@end

@protocol FSConnectorDelegate <NSObject>

-(void) FSConnectorDidReciveData:(NSArray <FSItem *>*) data;

@end



@interface FSConnector : NSObject

@property (nonatomic, weak) id<FSConnectorDelegate> delegate;
-(void)requestDataForPlaces:(NSArray <FSCoordinate *> *) places;

@end
