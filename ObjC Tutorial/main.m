//
//  main.m
//  ObjC Tutorial
//
//  Created by Miguel Jimenez on 12/17/17.
//  Copyright © 2017 Miguel Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int x = 10;
//        NSString *myString = [NSString stringWithFormat:@"The variable x stores the number %i",x];
//        NSLog(@"%@", myString);
//        
//        NSLog(@"Plese enter a word");
//        char cstring[40];
//        scanf("%s",cstring);
//        NSString *inputString = [NSString stringWithCString:cstring encoding:1];
//        NSLog(@"You entered %@ and is %li characters long",inputString, [inputString length]);
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        do {
            Person *newPerson = [[Person alloc] init];
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson];
            NSLog(@"Do you want to enter anothernae?");
            scanf("\n%c",&response);
        }while(response == 'y');
        NSLog(@"Number of people in  the DB: %li", [people count]);
        for (Person *person in people) {
            [person printInfo];
        }
    }
    return 0;
}
