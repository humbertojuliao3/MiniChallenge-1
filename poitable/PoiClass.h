//
//  PoiClass.h
//  poitable
//
//  Created by Humberto  Julião on 04/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoiClass : NSObject

@property NSString *nome;
@property NSString *endereco;
-(instancetype) initWithNome:(NSString *)n andEndereco:(NSString *)e;
@end
