//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Guilherme Bayma on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
#import "Contador.h"

@interface SecondViewController () {
    
    // singleton
      Contador *contador;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador sharedInstance];
}

- (void)viewDidAppear:(BOOL)animated{
    [self atualiza];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// delegate iOS - parecido com o observer para atualizar os resultados automaticamente
//Ainda nāo implementado.
- (IBAction)click:(id)sender {
    [self atualiza];
}

-(void)atualiza {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}


@end
