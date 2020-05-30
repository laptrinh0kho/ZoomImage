//
//  ViewController.swift
//  ZoomImage
//
//  Created by Kha on 5/30/20.
//  Copyright © 2020 Kha. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Thêm delegate cho scrollView
        scrollView.delegate = self
    }
}

//Hàm này để cho scrollView biết ta cần zoom view nào
extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
