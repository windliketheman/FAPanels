//
//  FAPaenl+Configurations.swift
//  FAPanels
//
//  Created by Fahid Attique on 25/06/2017.
//  Copyright © 2017 Fahid Attique. All rights reserved.
//

import Foundation
import UIKit





// Enum to get visible state of panels

public enum FAPanelVisibleState: Int {
    case center = 0, left, right
}







// Configurations for Panels

open class FAPanelConfigurations: NSObject {
    
    
    public override init() {
        super.init()
    }

    
    // overrides leftPanelGapPercentage
    
    @objc open var leftPanelWidth : CGFloat = 280
    @objc open var rightPanelWidth: CGFloat = 280
    
    @objc open var leftPanelGapPercentage : CGFloat = 0.8
    @objc open var rightPanelGapPercentage: CGFloat = 0.8
    
    
    
    
    // resizes all subviews as well
    
    @objc open var resizeLeftPanel : Bool = false
    @objc open var resizeRightPanel: Bool = true
    
    
    
    // Adds push animation on side panels
    
    @objc open var pusheSidePanels: Bool = false
    
    
    
    
    // Bounce effects on panel animations
    
    @objc open var bounceOnLeftPanelOpen  : Bool = true
    @objc open var bounceOnRightPanelOpen : Bool = true
    @objc open var bounceOnCenterPanelOpen: Bool = true
    
    
    @objc open var bounceOnLeftPanelClose   : Bool = false
    @objc open var bounceOnRightPanelClose  : Bool = false
    @objc open var bounceOnCenterPanelChange: Bool = true
    
    @objc open var bouncePercentage : CGFloat = 0.075
    @objc open var bounceDuration   : CGFloat = 0.1
    
    
    
    
    //  Panning Gesture
    
    @objc open var canRecognizePanGesture: Bool = true
    
    @objc open var panFromEdge          : Bool = false
    @objc open var minEdgeForLeftPanel  : CGFloat = 70.0
    @objc open var minEdgeForRightPanel : CGFloat = 70.0
    
    @objc open var canLeftSwipe : Bool = true
    @objc open var canRightSwipe: Bool = true
    
    
    
    
    // restricts panning gesture to work for top VC of Navigation/TabBar Controller
    
    @objc open var restrictPanningToTopVC: Bool = true
    
    
    
    
    // Handles the interface auto rotation of visible panel
    
    @objc open var handleAutoRotation: Bool = true
    
    
    
    
    // Applies corner radius to panels
    
    @objc open var cornerRadius: CGFloat = 0.0
    
    
    
    
    // Shadow configurations
    
    @objc open var shadowColor   : CGColor = UIColor.black.cgColor
    @objc open var shadowOffset  : CGSize  = CGSize(width: 5.0, height: 0.0)
    @objc open var shadowOppacity: Float = 0.7

    
    
    
    // Remove panels from super view when possible
    
    @objc open var unloadRightPanel: Bool = false
    @objc open var unloadLeftPanel : Bool = false
    
    
    
    
    // Max animation duration for animations of side panels
    
    @objc open var maxAnimDuration  : CGFloat = 0.15
    
    
    
    
    // percentage of screen's width to the centerPanel.view must move for panGesture to succeed
    
    @objc open var minMovePercentage: CGFloat = 0.15
    
    
    
    
    // Only Center Panel Change animation
    
    @objc open var changeCenterPanelAnimated : Bool = true
    open var centerPanelTransitionType : FAPanelTransitionType = .boxFade
    @objc open var centerPanelTransitionDuration: TimeInterval = 0.40
    
    
    
    
    @available(*,deprecated, message: "Please use 'shouldAnimateWithPan' & 'colorForTapView' for overlays while panning.")
    open var showDarkOverlayUnderLeftPanelOnTop : Bool = true
    @available(*,deprecated, message: "Please use 'shouldAnimateWithPan' & 'colorForTapView' for overlays while panning.")
    open var darkOverlayUnderLeftPanelOnTopColor : UIColor = UIColor.black.withAlphaComponent(0.5)
    @available(*,deprecated, message: "Please use 'shouldAnimateWithPan' & 'colorForTapView' for overlays while panning.")
    open var showDarkOverlayUnderRightPanelOnTop : Bool = true
    @available(*,deprecated, message: "Please use 'shouldAnimateWithPan' & 'colorForTapView' for overlays while panning.")
    open var darkOverlayUnderRightPanelOnTopColor : UIColor = UIColor.black.withAlphaComponent(0.5)

    
    // Tap View Properties

    @objc open var colorForTapView: UIColor = UIColor.black.withAlphaComponent(0.3)
    @objc open var shouldAnimateWithPan: Bool = true
}







// Enum for center panel transition type

public enum FAPanelTransitionType: UInt {
    
    case
    
    flipFromLeft = 0,
    flipFromRight,
    flipFromTop,
    flipFromBottom,
    
    curlUp,
    curlDown,
    
    crossDissolve,

    moveRight,
    moveLeft,
    moveUp,
    moveDown,

    splitHorizontally,
    splitVertically,

    
    dumpFall,
    
    boxFade

    
    func transitionOption() -> Any {
        
        switch self {
            
            
        case .flipFromLeft:
            return UIView.AnimationOptions.transitionFlipFromLeft
            
        case .flipFromRight:
            return UIView.AnimationOptions.transitionFlipFromRight
            
        case .flipFromTop:
            return UIView.AnimationOptions.transitionFlipFromTop
            
        case .flipFromBottom:
            return UIView.AnimationOptions.transitionFlipFromBottom
            
            
            
            
            
        case .curlUp:
            return UIView.AnimationOptions.transitionCurlUp
            
        case .curlDown:
            return UIView.AnimationOptions.transitionCurlDown
            
            
            
            
            
        case .crossDissolve:
            return UIView.AnimationOptions.transitionCrossDissolve
            
            
            
            
            
        case .moveRight:
            return FAPanelTransitionType.moveRight

        case .moveLeft:
            return FAPanelTransitionType.moveLeft

        case .moveUp:
            return FAPanelTransitionType.moveUp

        case .moveDown:
            return FAPanelTransitionType.moveDown

            
            
            
            
            
        case .splitHorizontally:
            return FAPanelTransitionType.splitHorizontally

        case .splitVertically:
            return FAPanelTransitionType.splitVertically
         


        
        case .dumpFall:
            return FAPanelTransitionType.dumpFall

            
            
        case .boxFade:
            return FAPanelTransitionType.boxFade

        }
    }
}
