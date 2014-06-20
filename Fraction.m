//
//  fraction.m
//  first
//
//  Created by by Mango Lai on 2014/5/27.
//  Copyright (c) 2014年 Mango. All rights reserved.
//

#import "fraction.h"

@implementation Fraction

-(NSString*)description //回傳一個NSString結果的分數
{
    return [NSString stringWithFormat:@"%d/%d",self.numerator,self.denominator];
} 

-(NSString*) str
{
    if(!_str)//避免產生空物件
    {
        _str=[NSString new ];
    }
    return _str;
}

-(void)setDenominator:(int)denominator //覆寫Denominator的set方法，避免Denominator為0
{
    if(denominator) _denominator=denominator;
}


-(void) setTo:(int)n over:(int)d //設定分數之分子分母
{
    //兩種寫法均可行
    [self setNumerator:n];
    self.denominator=d;
}

-(void) print
{
    NSLog(@"%i / %i",self.numerator,self.denominator);
}

-(Fraction*) add:(Fraction*) f
{
    Fraction *sum=[Fraction new];
    sum.denominator = self.denominator * f.denominator;
    sum.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    sum=[sum Reduction:sum];
    return sum;
}

-(Fraction*) Subtract:(Fraction*) f
{
    Fraction *sub=[Fraction new];
    sub.denominator = self.denominator * f.denominator;
    sub.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    sub=[sub Reduction:sub];
    return sub;
}

-(Fraction*) Multiply:(Fraction*) f
{
    Fraction *mul=[Fraction new];
    mul.denominator = self.denominator * f.denominator;
    mul.numerator = self.numerator * f.numerator;
    mul=[mul Reduction:mul];
    return mul;
}

-(Fraction*) Divide:(Fraction*) f
{
    Fraction *div=[Fraction new];
    div.denominator = self.denominator * f.numerator;
    div.numerator = self.numerator * f.denominator;
    div=[div Reduction:div];
    return div;
}

-(Fraction*) Reduction:(Fraction*) f
{
    for (int i=2; i<f.denominator; i++) {
        while ((f.numerator%i==0) && (f.denominator%i==0)) {
            f.numerator = f.numerator / i;
            f.denominator = f.denominator / i;
        }
    }
    return f;
}
@end
