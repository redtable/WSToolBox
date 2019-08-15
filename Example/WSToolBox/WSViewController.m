//
//  WSViewController.m
//  WSToolBox
//
//  Created by redtable on 08/15/2019.
//  Copyright (c) 2019 redtable. All rights reserved.
//

#import "WSViewController.h"
#import "NEJsonDataTool.h"

@interface WSViewController ()

@end

@implementation WSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary * dic = @{
                           @"string":@"stringValue",
                           @"array":@[@"arrayValue1", @"arrayValue2"],
                           @"dictionary":@{@"dicKey":@"dicValue"},
                           @"integer":@(1),
                           @"float":@(12.34),
                           @"bool":@(YES)
                           };
    
    NSLog(@"string --> %@", StringFromDictionary(dic, @"string"));
    NSLog(@"array --> %@", ArrayFromDictionary(dic, @"array"));
    NSLog(@"dictionary --> %@", DictionaryFromDictionary(dic, @"dictionary"));
    NSLog(@"integer --> %ld", IntegerFromDictionary(dic, @"integer"));
    NSLog(@"float --> %f", FloatFromDictionary(dic, @"float"));
    NSLog(@"bool --> %d", BoolFromDictionary(dic, @"bool"));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
