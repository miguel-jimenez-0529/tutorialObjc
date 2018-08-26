//
//  Person.h
//  ObjC Tutorial
//
//  Created by Miguel Jimenez on 12/17/17.
//  Copyright © 2017 Miguel Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *name;
    NSString *lastname;
    int age;
}
- (void)enterInfo;
-(void)printInfo;

@end
