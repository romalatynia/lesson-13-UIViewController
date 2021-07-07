//
//  ViewController.swift
//  UIViewController
//
//  Created by Harbros47 on 6.01.21.
//

import UIKit

class ViewController: UIViewController {
   

    // MARK: - Loading
    override func loadView() {
        super.loadView()
        print("loadView")
        if isViewLoaded {
            print("view loaded")
        } else {
            print("view no loaded")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("viewDidLoad")
        self.view.backgroundColor = .red
        if isViewLoaded {
            print("view loaded")
        } else {
            print("view no loaded")
        }
    }
    // MARK: - Views
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }

    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    // MARK: - Orientation
    
    override var shouldAutorotate: Bool {
        true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
         .all
    }

//    var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation
    
    open override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        print("willRotate from to \(toInterfaceOrientation.rawValue)")
        
    }
    
    open override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        print("didRotate from \(fromInterfaceOrientation.rawValue) to ")
    }

    // MARK: - Memory
    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
