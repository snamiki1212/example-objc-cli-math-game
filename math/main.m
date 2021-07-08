//
//  main.m
//  math
//
//  Created by shunnamiki on 2021/07/07.
//

#import <Foundation/Foundation.h>
#import "BaseQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

const int NUMBER_OF_QUESTION = 10;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Math!\n\n");
        
        ScoreKeeper *sc = [[ScoreKeeper alloc] init];
        QuestionManager *qm = [[QuestionManager alloc] init];
        QuestionFactory *qf = [[QuestionFactory alloc] init];
        
        while([sc total] < NUMBER_OF_QUESTION){
            // create model
            BaseQuestion *question = [qf generateRandomQuestion];
            NSLog(@"%@\n", question.question);
            
            // append to list
            [qm.questions addObject:question];
            
            // input
            NSString *str = [InputHandler getInputHandler];
            
            // commands
            BOOL shouldQuit = [str isEqualToString:@"quit"];
            if(shouldQuit) break;
            
            // result
            BOOL isCorrect = question.answer == [str intValue];
            if(isCorrect) {
                NSLog(@"Right\n");
                sc.rightCount++;
            } else {
                NSLog(@"Wrong\n");
                sc.wrongCount++;
            }
        }
        
        NSLog(@"%@", [sc getResult]);
        NSLog(@"%@", [qm timeOutput]);
    }
    return 0;
}
