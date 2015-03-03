//
//  GroupPOI.h
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "POI.h"

@interface GroupPOI : NSObject
{
    NSMutableArray *groupPOIName;
    NSMutableArray *poiArray;
}

@property NSMutableArray *groupPOIName;
@property NSMutableArray *poiArray;
+(GroupPOI *) instance;
-(id) initWithGroups;
-(void) addGroupName:(NSString *)n;
@end
