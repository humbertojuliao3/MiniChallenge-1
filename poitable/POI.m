//
//  POI.m
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "POI.h"
#import "GroupPOI.h"

@implementation POI
@synthesize poiName,poiAddress;

static POI * instance = nil;

+(POI *) instance{
    if (instance == nil){
        instance = [[POI alloc] initWithLocation];
    }
    return instance;
}
-(id)initWithLocation{
    if (self) {
        poiName = [[NSMutableArray alloc] init];
        poiAddress = [[NSMutableArray alloc] init];
        [poiName addObject:@"teste"];
        [poiAddress addObject:@"teste"];
    }
    return self;
}

-(id)initWithName:(NSString *)n andAddress:(NSString *)a{
    if (self) {
        POI *poiInstance = [[POI alloc] init];
        poiInstance.poiName = [[NSMutableArray alloc] init];
        poiInstance.poiAddress = [[NSMutableArray alloc] init];
        [poiInstance.poiName addObject:n];
        [poiInstance.poiAddress addObject:a];
    }
    return self;
}
-(void)addPOIRowWithName:(NSString *)nome andAddress:(NSString *)address{
    [poiName addObject:nome];
    [poiAddress addObject:address];
}

@end
