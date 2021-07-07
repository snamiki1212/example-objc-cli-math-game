//
//  main.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

// MARK: - Input Helpers
NSString *getInputStr(void) {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:(NSUTF8StringEncoding)];
    return inputString;
}

NSString *parseStr(NSString *str) {
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Math!\n\n");
        
        while(true){
            // create model
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@\n", q1.question);
            
            // input
            NSString *str = getInputStr();
            str = parseStr(str);
            
            // commands
            BOOL shouldQuit = [str isEqualToString:@"quit"];
            if(shouldQuit) break;
            
            // result
            BOOL isCorrect = q1.answer == [str intValue];
            if(isCorrect) {
                NSLog(@"Right\n");
            } else {
                NSLog(@"Wrong\n");
            }
        }
    }
    return 0;
}
