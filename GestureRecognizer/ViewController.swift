//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Alican Kurt on 8.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carImageView: UIImageView!
    
    @IBOutlet weak var modelLabel: UILabel!
    var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carImageView.isUserInteractionEnabled = true
        
        let carGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
    
        carImageView.addGestureRecognizer(carGestureRecognizer)
        
    }
    
    @objc func changePicture(){
        counter = counter % 3
        if counter == 0{
            carImageView.image = UIImage(named: "gtr34")
            modelLabel.text = "GT-R34"
        }else if counter == 1{
            carImageView.image = UIImage(named: "gtr35")
            modelLabel.text = "GT-R35"
        }else if counter == 2{
            carImageView.image = UIImage(named: "gtr36")
            modelLabel.text = "GT-R36"
        }
        counter += 1
        
        
        
    }


}

