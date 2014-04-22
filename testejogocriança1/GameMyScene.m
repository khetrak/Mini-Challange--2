//
//  GameMyScene.m
//  testejogocriança1
//
//  Created by Lucas Mendanha Filardi on 4/22/14.
//  Copyright (c) 2014 MiniChal2. All rights reserved.
//

#import "GameMyScene.h"

@interface GameMyScene ()

@property BOOL ContentCreated;

@end

@implementation GameMyScene

static inline CGFloat skRandf()
{
    return rand() / (CGFloat) RAND_MAX;
    
}
static inline CGFloat skRand(CGFloat low, CGFloat high)
{
    return skRandf() * (high - low) + low;
}




-(void)didMoveToView:(SKView *)view
{
    if (!self.ContentCreated)
    {
        [self createSceneContents];
        self.ContentCreated = YES;
    }
}

-(void)createSceneContents
{
    self.backgroundColor = [SKColor blackColor];
    [self game];
}
-(void)funcao
{
    SKSpriteNode *equacao;
    SKSpriteNode *num1;
    SKSpriteNode *num2;
    SKSpriteNode *sin;
    SKSpriteNode *extra;
    //random numero 1
    //random numero 2
    //random equação
    int  numero1 =  3;
    int  numero2 =  6;
    NSString * sinal =  @"+";
    int  resposta;
    
    
    if ([sinal  isEqual: @"+"])
    {
        resposta = numero1 + numero2;
    }
    if ([sinal  isEqual: @"-"])
    {
        resposta = numero1 + numero2;
    }
    
    num1 = [self addnumero:numero1];
    num2 = [self addnumero:numero2];
    sin  = [self sinalequa:sinal];
    extra= [self extra];
    
    [equacao addChild:num1];
    [equacao addChild:num2];
    [equacao addChild:sin];
    [equacao addChild:extra];
    
    equacao.position = CGPointMake(skRand(CGRectGetMidX(self.frame)/2,CGRectGetMidX(self.frame)*1.7),CGRectGetMidY(self.frame)*1.3);
    
    
    [self addChild:equacao];
    
    
    SKAction *movimento = [SKAction group:@[
                                            [SKAction moveToY:CGRectGetMinY(self.frame)*1.1 duration:15],
                                            [SKAction scaleXBy:2.5f y:2.5f duration:15]
                                            ]
                           ];
    [equacao runAction:movimento];
}

-(SKSpriteNode *)addnumero:(int)n
{
    SKSpriteNode * numero;
    if (n == 0)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"0.png"];
    }
    if (n == 1)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"1.png"];
    }
    if (n == 2)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"2.png"];
    }
    if (n == 3)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"3.png"];
    }
    if (n == 4)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"4.png"];
    }
    if (n == 5)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"5.png"];
    }
    if (n == 6)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"6.png"];
    }
    if (n == 7)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"7.png"];
    }
    if (n == 8)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"8.png"];
    }
    if (n == 9)
    {
        numero = [[SKSpriteNode alloc] initWithImageNamed:@"9.png"];
    }
    return numero;
}

-(SKSpriteNode *)sinalequa:(NSString *)sin
{
    SKSpriteNode * sinal;
    if ([sinal  isEqual: @"+"])
    {
        sinal = [[SKSpriteNode alloc] initWithImageNamed:@"mais.png"];
    }
    if ([sinal  isEqual: @"-"])
    {
        sinal = [[SKSpriteNode alloc] initWithImageNamed:@"menos.png"];
    }
    return sinal;
}
-(SKSpriteNode *)extra
{
    SKSpriteNode * extra = [[SKSpriteNode alloc] initWithImageNamed:@"extra"];
    return extra;
}


-(void)game
{
    [self funcao];
    
}


@end
