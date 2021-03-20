//
//  Animation.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 02.03.2021.
//

//import Foundation
import UIKit

class Pulsing: CALayer {
    
    var animationGrup = CAAnimationGroup()
    var initialPulseScale:Float = 0
    var nextPulseAfter:TimeInterval = 0
    var animationDuration:TimeInterval = 1.5
    var radius:CGFloat = 200
    var numberOfPulse:Float = Float.infinity
    
    
    override init(layer: Any) {
        super.init(layer: layer )
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
    }
    
    
    init(numberOfPulse: Float = Float.infinity, radius:CGFloat, position: CGPoint ) {
        super.init()
    
        self.backgroundColor = UIColor.black.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radius = radius
        self.numberOfPulse = numberOfPulse
        self.position = position
        
        
        self.bounds = CGRect(x: 0, y:0, width: radius * 2 , height: radius * 2)
        self.cornerRadius = radius
        
        
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            self.setupAnimationGroup()
            
            DispatchQueue.main.async {
                self.add(self.animationGrup, forKey: "pulsante")
            }
        }
        
       
        
        
        
    }
    func createScaleAnimation() -> CABasicAnimation {
        
     let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = NSNumber(value: initialPulseScale )
        scaleAnimation.toValue = NSNumber(value: 1)
        scaleAnimation.duration = animationDuration
        
        return scaleAnimation
    }
    
    func createOpacityAnimation() -> CAKeyframeAnimation {
        
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.duration = animationDuration
        opacityAnimation.values = [0.4,0.8, 1]
        opacityAnimation.keyTimes = [0, 0.2,1]
        return opacityAnimation
    }
    
    func setupAnimationGroup() {
        self.animationGrup = CAAnimationGroup()
        self.animationGrup.duration = animationDuration + nextPulseAfter
        self.animationGrup.repeatCount = numberOfPulse
     //   let defaultCurve = CAMediaTimingFunction()
        
        
        
        
       // self.animationGrup.timingFunction = defaultCurve
        self.animationGrup.animations = [createScaleAnimation(), createOpacityAnimation()]
        
        
        
    }
    
    

    
    
    
    
    
    
    
}
