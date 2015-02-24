//
//  Contador.h
//  ContaPessoas
//
//  Created by Guilherme Bayma on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

@protocol Mostrador <NSObject>

- (void) atualiza;

@end

@interface Contador : NSObject 

+ (instancetype)sharedInstance;

- (void)maisUmCueca;
- (void)maisUmaGata;
- (void)zerar;

@property (nonatomic,weak) id <Mostrador> delegate;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end