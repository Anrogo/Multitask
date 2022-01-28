//
//  ViewController.swift
//  Multitask
//
//  Created by user190722 on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    var queue: OperationQueue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        queue = OperationQueue()
        
    }

    @IBAction func pause(_ sender: UIButton) {
        DispatchQueue.global().async {
            sleep(3)
            print("ya está!")
        }
        
    }
    
    @IBAction func download(_ sender: UIButton) {
        let download = ImageDownload(url: "https://data.1freewallpapers.com/detail/gray-mountains-and-calm-body-of-water-near-mountain-during-daytime-with-reflection-nature.jpg", imageView: imageView)
        queue?.addOperation(download)
        
    }
    @IBAction func download2(_ sender: UIButton) {
        let download = ImageDownload(url: "https://data.1freewallpapers.com/detail/calm-body-of-water-surrounded-with-trees-and-mountains-during-daytime-4k-nature.jpg", imageView: imageView2)
        queue?.addOperation(download)
    }
    
    @IBAction func download3(_ sender: UIButton) {
        let download = ImageDownload(url: "https://data.1freewallpapers.com/detail/graphy-of-body-of-water-near-green-leaves-trees-and-field-during-daytime-with-reflection-4k-nature.jpg", imageView: imageView3)
        queue?.addOperation(download)
    }
}

