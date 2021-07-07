//
//  main.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

const int NUMBER_OF_QUESTION = 10;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Math!\n\n");
        
        ScoreKeeper *sc = [[ScoreKeeper alloc] init];
        
        while([sc total] < NUMBER_OF_QUESTION){
            // create model
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@\n", q1.question);
            
            // input
            NSString *str = [InputHandler getInputHandler];
            
            // commands
            BOOL shouldQuit = [str isEqualToString:@"quit"];
            if(shouldQuit) break;
            
            // result
            BOOL isCorrect = q1.answer == [str intValue];
            if(isCorrect) {
                NSLog(@"Right\n");
                sc.rightCount++;
            } else {
                NSLog(@"Wrong\n");
                sc.wrongCount++;
            }
        }
        
        NSLog(@"%@", [sc getResult]);
    }
    return 0;
}
