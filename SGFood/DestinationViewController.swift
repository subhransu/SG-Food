//
//  DestinationViewController.swift
//  SGFood
//
//  Created by Behera, Subhransu on 6/10/16.
//  Copyright © 2016 subh. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
  var foodName: String?
  var foodDescription: String?
  var foodImgName: String?


  @IBOutlet weak var foodNameLabel: UILabel!
  @IBOutlet weak var foodDescTextView: UITextView!
  @IBOutlet weak var foodThumbImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        foodNameLabel.text = foodName
        foodDescTextView.text = foodDescription
      
        guard let foodImgName = foodImgName else {
          return
        }
      
        foodThumbImage.image = UIImage(named: foodImgName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  
    

}
