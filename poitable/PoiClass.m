//
//  PoiClass.m
//  poitable
//
//  Created by Humberto  Julião on 04/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "PoiClass.h"

@implementation PoiClass
@synthesize nome,endereco;
-(instancetype) initWithNome:(NSString *)n andEndereco:(NSString *)e{
    if (self) {
        self.nome=n;
        self.endereco=e;
    }
    return self;
}
@end
