//
//  VideoBackgroundControllerSpec.swift
//  VideoBackgroundViewController
//
//  Created by Chris Jimenez on 2/22/16.
//  Copyright © 2016 Chris Jimenez. All rights reserved.
//

import Foundation
import Nimble
import Quick
import VideoBackgroundViewController
import UIKit


//Specs for the delayer class
class VideoBackgroundControllerSpec: QuickSpec {
    
    override func spec() {
        
        let videoBackgroundViewController = VideoBackgroundViewController()
        
        it("is correct with initial values"){
            
            videoBackgroundViewController.videoShouldLoop = true
            videoBackgroundViewController.alpha = 0.8
            videoBackgroundViewController.playSound = false
            videoBackgroundViewController.videoScalingMode = .resizeAspectFill
            videoBackgroundViewController.videoURL = nil
            videoBackgroundViewController.backgroundColor = UIColor.black
            
            expect(videoBackgroundViewController.videoPlayer).notTo(beNil())
            expect(videoBackgroundViewController.soundLevel).to(equal(0.0))
            expect(videoBackgroundViewController.playSound).to(beFalse())
            expect(videoBackgroundViewController.videoURL).to(beNil())
            expect(videoBackgroundViewController.videoShouldLoop).to(beTrue())
            expect(videoBackgroundViewController.videoScalingMode).to(equal(VideoScalingMode.resizeAspectFill))
            expect(videoBackgroundViewController.backgroundColor).to(equal(UIColor.black))
        }
        
    }
    
}
