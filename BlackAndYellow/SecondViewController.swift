//
//  SecondViewController.swift
//  BlackAndYellow
//
//  Created by Rinat Latypov on 18.05.2021.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var yellow: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var green: UILabel!
    var count = 0
    @IBOutlet weak var TextButtin: UIButton!
    override func viewDidLoad() {
    
        yellow.alpha = 0.5
        green.alpha = 0.5
        red.alpha = 0.5
        
        green.layer.cornerRadius = green.frame.width/2
        green.layer.masksToBounds = true
        
        red.layer.cornerRadius = red.frame.width/2
        red.layer.masksToBounds = true
        yellow.layer.cornerRadius = yellow.frame.width/2
        yellow.layer.masksToBounds = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func remakeLights(_ sender: UIButton) {
      
        if count >= 3 {
            count = 0
        }
        count += 1
        
        
        switch count {
        case 1:
            TextButtin.setTitle("NEXT", for: .normal)
            yellow.alpha = 0.5
            green.alpha = 0.5
            red.alpha = 1
        case 2:
            yellow.alpha = 1
            green.alpha = 0.5
            red.alpha = 0.5
        case 3:
            yellow.alpha = 0.5
            green.alpha = 1
            red.alpha = 0.5
        
        default:
            count = 0
        }
    
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
