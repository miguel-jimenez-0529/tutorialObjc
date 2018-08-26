//
//  Person.m
//  ObjC Tutorial
//
//  Created by Miguel Jimenez on 12/17/17.
//  Copyright © 2017 Miguel Jimenez. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)enterInfo {
    NSLog(@"What is the firslt name?");
    char cstring[40];
    scanf("%s", cstring);
    name = [NSString stringWithCString:cstring encoding:1];
    NSLog(@"What is the last name of %@",name);
    scanf("%s",cstring);
    lastname = [NSString stringWithCString:cstring encoding:1];
    NSLog(@"How old is %@ %@ ?",name,lastname);
    scanf("%i",&age);
    
}
-(void)printInfo {
    NSLog(@"%@ %@ is %i years old",name,lastname,age);
}

@end
