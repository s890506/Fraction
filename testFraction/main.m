//
//  main.m
//  testFraction
//
//  Created by lab506 on 2014/6/20.
//  Copyright (c) 2014年 Mango. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fraction *myFrac1;
        //myFrac1 = [Fraction alloc];
        //myFrac1 = [myFrac1 init];
        myFrac1 = [[Fraction alloc] init];
        [myFrac1 setTo:2 over:3];
        [myFrac1 print];
        
        Fraction *myFrac2 = [Fraction new];
        [myFrac2 setTo:1 over:3];
        [myFrac2 setDenominator:0];//覆寫set的方法 使得此變數不得為0
        [myFrac2 print];
        Fraction *myFrac3;
        myFrac3 = [myFrac1 add:myFrac2];//加
        [myFrac3 print];
        myFrac3 = [myFrac1 Subtract:myFrac2];//減
        [myFrac3 print];
        myFrac3 = [myFrac1 Multiply:myFrac2];//乘
        [myFrac3 print];
        myFrac3 = [myFrac1 Divide:myFrac2];//除
        [myFrac3 print];
        
        //myFrac3.str=@"Hello";
        //myFrac3.str=[myFrac3.str stringByAppendingString:@" World"]; //stringByAppendingString 連接字串用
        //NSLog(@"%@",myFrac3.str);
        //NSLog(@"%@",myFrac3);
    }
    return 0;

}

