//
//  main.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>

// MARK: - Input Helpers
NSString *getInputStr(void) {
    char inputChars[255];
    printf("Input a string: ");
    fgets(inputChars, 255, stdin);
//    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSString *inputString = [NSString stringWithCString:inputChars encoding:(NSUTF8StringEncoding)];

    return inputString;
}

NSString *parseStr(NSString *str) {
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *str = getInputStr();
        str = parseStr(str);
        NSLog(@"%@.", str);
        if([str isEqualToString:@"text"]) {
            printf("OK\n");
        }
    }
    return 0;
}
