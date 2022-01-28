//
//  ImageDownload.swift
//  Multitask
//
//  Created by user190722 on 1/28/22.
//

import UIKit

class ImageDownload: Operation {

    var url:URL
    var imageView: UIImageView
    
    init(url: String, imageView: UIImageView) {
        self.url = URL(string: url)!
        self.imageView = imageView
    }
    
    override func main() {
        if isCancelled {
            print("Descarga cancelada (1)")
            return
        }
        do {
            let data = try Data(contentsOf: url)
            sleep(3)
            if isCancelled {
                print("Descarga cancelada (2)")
                return
            }
            
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
            
        } catch {
            print("Ha ocurrido un error")
        }
    }
    
}
