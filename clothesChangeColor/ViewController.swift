//
//  ViewController.swift
//  clothesChangeColor
//
//  Created by 王衍智 on 2023/1/29.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var redSilder: UISlider!
@IBOutlet weak var greenSilder: UISlider!
@IBOutlet weak var alphaSilder: UISlider!
@IBOutlet weak var blueSilder: UISlider!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.backgroundColor = UIColor.systemMint
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: Any) {
        backgroundImageView.backgroundColor = UIColor(red: CGFloat(redSilder.value), green: CGFloat(greenSilder.value), blue: CGFloat(blueSilder.value), alpha: CGFloat(alphaSilder.value))
    }
    
    @IBAction func random(_ sender: Any) {
        redSilder.setValue(Float.random(in: 0...1), animated: true)
        greenSilder.setValue(Float.random(in: 0...1), animated: true)
        blueSilder.setValue(Float.random(in: 0...1), animated: true)
        alphaSilder.setValue(Float.random(in: 0...1), animated: true)
        backgroundImageView.backgroundColor = UIColor(red: CGFloat(redSilder.value), green: CGFloat(greenSilder.value), blue: CGFloat(blueSilder.value), alpha: CGFloat(alphaSilder.value))

    }
}

