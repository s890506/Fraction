//
//  Fraction.h
//  testFraction
//
//  Created by lab506 on 2014/6/20.
//  Copyright (c) 2014年 Mango. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property (nonatomic)int numerator, denominator;
//宣告為property的主要功能是方便我們取用或設定物件裡的資料成員，會自動生成get, set方法
//nonatomic-->允許被不同執行緒同時存取，相對於atomic，速度較快，但較不安全
@property (nonatomic) NSString *str;

-(void) setTo:(int)n over:(int)d;
-(void) print;
-(Fraction*) add:(Fraction*) f;
-(Fraction*) Subtract:(Fraction*) f;
-(Fraction*) Multiply:(Fraction*) f;
-(Fraction*) Divide:(Fraction*) f;
-(Fraction*) Reduction:(Fraction*) f;
@end
