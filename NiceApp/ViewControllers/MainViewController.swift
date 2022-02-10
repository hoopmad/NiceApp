//
//  ViewController.swift
//  NiceApp
//
//  Created by Kwon Young Jeong on 2022/02/10.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main Screen"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        
        return label
    }()
    
    let animationView: AnimationView = {
       
        let animView = AnimationView(name: "94994-loading-car")
        animView.frame = CGRect(x:0,y:0,width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        return animView
    }()

    // when view is created
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        
        // start animation
        animationView.play{ (finish) in
            
            print("Animation Finished")
            
            self.view.backgroundColor = .white
            
            // 뷰(부모)로부터 애니메이션뷰를 제거
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
        
    }


}

