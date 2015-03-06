//
//  GroupPOI.h
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupPOI.h"
#import "PoiClass.h"

@interface GroupPOI : NSObject
{
    NSMutableArray *groupPOIName;
    NSMutableDictionary *poiItens;
}
@property NSString *key;
@property NSMutableArray *groupPOIName;
@property NSMutableArray *poiItensArray;
@property NSMutableDictionary *poiItens;

+(GroupPOI *) instance;
-(id) initWithGroups;
-(void) addGroupName:(NSString *)n;
-(void)addPOIRowWithItem:(PoiClass *)valor atKey:(NSString *)chave;
@end
