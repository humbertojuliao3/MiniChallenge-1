//
//  POI.h
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface POI : NSObject
{
//    NSString
    NSMutableArray *poiName;
    NSMutableArray *poiAddress;
}

@property NSMutableArray *poiName;
@property NSMutableArray *poiAddress;

+(POI *) instance;
-(id)initWithLocation;
-(id) initWithName:(NSString *)n andAddress:(NSString *)a;
-(void)addPOIRowWithName:(NSString *)nome andAddress:(NSString *)address;
@end
