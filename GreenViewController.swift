//
//  GreenViewController.swift
//  Multitask
//
//  Created by user190722 on 1/27/22.
//

import UIKit

class GreenViewController: UIViewController {


    @IBAction func close(_ sender: UIButton) {
        print("1")
        dismiss(animated: true) {
            print("2")
        }
        print("3")
    }
}
