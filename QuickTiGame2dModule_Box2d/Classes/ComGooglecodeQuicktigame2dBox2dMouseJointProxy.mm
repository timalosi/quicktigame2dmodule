/**
 *  Copyright 2012 QuickTiGame2d project
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
#import "ComGooglecodeQuicktigame2dBox2dMouseJointProxy.hh"
#import "ComGooglecodeQuicktigame2dGameView.h"
#import "ComGooglecodeQuicktigame2dBox2dWorldProxy.hh"
#import <Box2D/Box2D.h>

#import "TiUtils.h"

@implementation ComGooglecodeQuicktigame2dBox2dMouseJointProxy


-(void)SetTarget:(id)args
{    
//    [lock lock];
    
    
    NSDictionary *props = [args count] > 0 ? [args objectAtIndex:0] : nil;
    
    float posX = [TiUtils floatValue:@"posX" properties:props def:1.0f] / PTM_RATIO;
    float posY = (height - [TiUtils floatValue:@"posY" properties:props def:1.0f]) / PTM_RATIO;
    
    b2Vec2 moveToPosition = b2Vec2(posX, posY);
    
    ((b2MouseJoint*)joint)->SetTarget(moveToPosition);
    //NSLog(@"target set  %@, %@", posX, posY);
  //  [lock unlock];
}





@end
