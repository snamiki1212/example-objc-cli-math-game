//
//  QuestionFactory.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (Question *) generateRandomQuestion {
    NSArray *classNameList = @[
        @"AdditionQuestion",
        @"SubtractionQuestion",
//        @"MultiplicationQuestion",
//        @"DivisionQuestion",
    ];
    NSUInteger len = [classNameList count];
    int randomIndex = arc4random_uniform((unsigned int) len);
    NSString *className = [classNameList objectAtIndex:randomIndex];
    return [[NSClassFromString(className) alloc] init];
}

@end
