//
//  InputHandler.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString *) getInputHandler {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:(NSUTF8StringEncoding)];
    NSString *parsed = [self parseStr: inputString];
    return parsed;
}

+ (NSString *) parseStr: (NSString *) str {
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
