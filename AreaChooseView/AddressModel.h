//
//  AddressModel.h
//  AreaChooseView
//
//  Created by imac on 16/8/29.
//  Copyright © 2016年 imac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressModel : NSObject
/**
 *  省
 */
@property (strong,nonatomic) NSString *Province;
/**
 *  市
 */
@property (strong,nonatomic) NSString *city;
/**
 *  区
 */
@property (strong,nonatomic) NSString *area;

@end
