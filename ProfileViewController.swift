//
//  ProfileViewController.swift
//  Inaldo&Tony
//
//  Created by Andrea on 15/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var ProfilePic: RoundImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var datebirthdayLabel: UILabel!
    @IBOutlet weak var badgeLabel: UILabel!
    @IBOutlet weak var personalTime: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.center = CGPoint(x: 120 , y: 252 )
        surnameLabel.center = CGPoint(x: 247, y: 252)
        datebirthdayLabel.center = CGPoint(x: 188, y:284 )
        badgeLabel.center = CGPoint(x: 187, y: 315)
        personalTime.center = CGPoint(x: 189, y: 371)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var navBarOutlet: UINavigationBar!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
