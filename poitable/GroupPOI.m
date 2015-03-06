//
//  GroupPOI.m
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "GroupPOI.h"

@implementation GroupPOI
@synthesize groupPOIName,poiItens;;

static GroupPOI * instance = nil;

+(GroupPOI *) instance{
    if (instance == nil){
        instance = [[GroupPOI alloc] initWithGroups];
        instance.poiItens=[[NSMutableDictionary alloc] init];
        instance.poiItensArray=[[NSMutableArray alloc] init];
    }
    return instance;
}
-(id)initWithGroups{
    if (self) {
        groupPOIName = [[NSMutableArray alloc] init];
        [groupPOIName addObject:@"rasgsag"];
    }
    return self;
}
-(void)addGroupName:(NSString *)n{
    [groupPOIName addObject:n];
}

//inicio da TRETA


-(id)initWithItem:(PoiClass *)valor atKey:(NSString *)chave{
    if (self) {
        
        [_poiItensArray addObject:valor];
        //        POI *poiInstance = [[POI alloc] init];
        //        poiInstance.poiName = [[NSMutableArray alloc] init];
        //        poiInstance.poiAddress = [[NSMutableArray alloc] init];
        //        [poiInstance.poiName addObject:n];
        //        [poiInstance.poiAddress addObject:a];
    }
    return self;
}
-(void)addPOIRowWithItem:(PoiClass *)valor atKey:(NSString *)chave{
    if (poiItens==nil) {
        [poiItens setObject:@[@""] forKey:chave];
    }
    
    [[poiItens objectForKey:chave] addObject:valor];
    //    [poiName addObject:nome];
    //    [poiAddress addObject:address];
}
@end
