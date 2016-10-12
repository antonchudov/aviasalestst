//
//  FSCollectionViewCell.h
//  AviasalesSDKTemplate
//
//  Created by anton chudov on 12.10.16.
//  Copyright © 2016 Go Travel Un LImited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *groupLabel;
@property (weak, nonatomic) IBOutlet UITextView *venueNameText;

@end
