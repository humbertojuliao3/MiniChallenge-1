//
//  GroupPOI.m
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "GroupPOI.h"

@implementation GroupPOI
@synthesize groupPOIName;

static GroupPOI * instance = nil;

+(GroupPOI *) instance{
    if (instance == nil){
        instance = [[GroupPOI alloc] initWithGroups];
    }
    return instance;
}
-(id)initWithGroups{
    if (self) {
        groupPOIName = [[NSMutableArray alloc] init];
        poiArray = [[NSMutableArray alloc] init];
        [groupPOIName addObject:@"rasgsag"];
    }
    return self;
}
-(void)addGroupName:(NSString *)n{
    [groupPOIName addObject:n];
}
@end
