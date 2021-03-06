//
//  MinimaBridger.m
//  App
//
//  Created by Elias Nemr on 12/12/2019.
//

#import "MinimaBridger.h"
#import "org/minima/Start.h"
#import <UIKit/UIKit.h>
//#import "Start.h"
#import "App-Swift.h"


@implementation MinimaBridger

- (id) init {
    if(self = [super init]) {
        [self runMinima];
    }
    return self;
}

- (void) runMinima {
    
    OrgMinimaStart *start = [[OrgMinimaStart alloc] init];
    
    NSLog(@"%@",[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
    
    NSString *url = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject].absoluteString;
    [start fireStarterWithNSString:url];
}

@end
