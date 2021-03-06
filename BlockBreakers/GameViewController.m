//
//  GameViewController.m
//  BlockBreakers
//
//  Created by Ananta Shahane on 11/01/18.
//  Copyright © 2018 Ananta Shahane. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"
#import "GameStart.h"

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    GameStart *scene = [GameStart nodeWithFileNamed:@"GameStart"];

    scene.scaleMode = SKSceneScaleModeAspectFit;
    
    SKView *skView = (SKView *)self.view;
    
    // Present the scene
    [skView presentScene:scene];
    
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
