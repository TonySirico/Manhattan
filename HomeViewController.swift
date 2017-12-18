
//
//  HomeViewController.swift
//  Inaldo&Tony
//
//  Created by Inaldo Ramos Ribeiro on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

var isSearchBarShrinked = false

class HomeViewController: UIViewController, UISearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/3.97)
        
        self.secondButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/3.97)
        
        self.thirdButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/1.9446)
        
        self.fourthButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/1.9446)
        
        self.fifthButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/1.2876)
        
        self.sixthButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/1.2876)
        
        self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:super.view.frame.height/12.35185)
        
        super.view.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        
        searchBarOutletTopConstraint.constant = super.view.frame.height/25.65384
        
        categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:-super.view.frame.height/33.35)
        
        backButtonOutlet.center = CGPoint(x: super.view.frame.width/7.9, y: -super.view.frame.height/33.35)
        
        tableViewOutlet.frame.origin = CGPoint (x:0, y:super.view.frame.height)
        
        searchBarOutlet.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        shrinkSearchBar()
        moveButtonsOut()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        self.searchBarOutlet.endEditing(true)
        self.resignFirstResponder()
    }
    
    func moveButtonsOut() {
        UIView.animate(withDuration: 0.3, animations: {self.firstButtonOutlet.center = CGPoint(x: -super.view.frame.width/5, y:super.view.frame.height/3.97)
        })
        UIView.animate(withDuration: 0.3, animations: {self.secondButtonOutlet.center = CGPoint(x: super.view.frame.width + super.view.frame.width/5, y:super.view.frame.height/3.97)
        })
        UIView.animate(withDuration: 0.3, animations: {self.thirdButtonOutlet.center = CGPoint(x: -super.view.frame.width/5, y:super.view.frame.height/1.9446)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fourthButtonOutlet.center = CGPoint(x: super.view.frame.width + super.view.frame.width/5, y:super.view.frame.height/1.9446)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fifthButtonOutlet.center = CGPoint(x: -super.view.frame.width/5, y:super.view.frame.height/1.2876)
        })
        UIView.animate(withDuration: 0.3, animations: {self.sixthButtonOutlet.center = CGPoint(x: super.view.frame.width + super.view.frame.width/5, y:super.view.frame.height/1.2876)
        })
        UIView.animate(withDuration: 0.5, delay: 0.3, animations: {self.tableViewOutlet.frame.origin = CGPoint (x:0, y:super.view.frame.height/7.666666)
        })
    }
    
    func moveButtonsIn() {
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.firstButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/3.97)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.secondButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/3.97)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.thirdButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/1.9446)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.fourthButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/1.9446)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.fifthButtonOutlet.center = CGPoint(x: super.view.frame.width/3.78787878, y:super.view.frame.height/1.2876)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.sixthButtonOutlet.center = CGPoint(x: super.view.frame.width/1.35869, y:super.view.frame.height/1.2876)
        })
        UIView.animate(withDuration: 0.3, animations: {self.tableViewOutlet.frame.origin = CGPoint (x:0, y:super.view.frame.height)
        })
        searchBarOutlet.text = ""
    }
    
    func moveLabelIn() {
        backButtonOutlet.setImage(#imageLiteral(resourceName: "Back"), for: .normal)
        moveButtonsOut()
        let when = DispatchTime.now() + 0.3
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.searchBarOutletTopConstraint.constant = -super.view.frame.height/11.9107
        }
        UIView.animate(withDuration: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:super.view.frame.height/12.35185)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:-super.view.frame.height/11.9107)
        })
        UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: super.view.frame.width/7.9, y:super.view.frame.height/12.35185)
        })
    }
    
    func moveLabelOut() {
        moveButtonsIn()
        UIView.animate(withDuration: 0.3, delay: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:-super.view.frame.height/33.35)
        })
        if isSearchBarShrinked == false {
            searchBarOutletTopConstraint.constant = super.view.frame.height/25.65384
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:super.view.frame.height/12.35185)
            })
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {
                self.searchBarOutlet.frame = CGRect(origin: CGPoint(x: 0, y:super.view.frame.height/25.65384), size: CGSize(width: super.view.frame.width, height: super.view.frame.height/11.9107))
            })
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.backButtonOutlet.center = CGPoint(x: super.view.frame.width/7.9, y:-super.view.frame.height/33.35)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.searchBarRightConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
            UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: super.view.frame.width + super.view.frame.width/5.597, y:super.view.frame.height/12.35185)
            })
        }
        searchBarOutlet.text = ""
        isSearchBarShrinked = false
    }
    
    func prepareButtonsForBack() {
        self.firstButtonOutlet.center = CGPoint (x:-super.view.frame.width/1.48809, y:super.view.frame.height/3.97)
        self.thirdButtonOutlet.center = CGPoint (x:-super.view.frame.width/1.48809, y:super.view.frame.height/1.9446)
        self.fifthButtonOutlet.center = CGPoint (x:-super.view.frame.width/1.48809, y:super.view.frame.height/1.2876)
        self.secondButtonOutlet.center = CGPoint (x:-super.view.frame.width/5, y:super.view.frame.height/3.97)
        self.fourthButtonOutlet.center = CGPoint (x:-super.view.frame.width/5, y:super.view.frame.height/1.9446)
        self.sixthButtonOutlet.center = CGPoint (x:-super.view.frame.width/5, y:super.view.frame.height/1.2876)
    }
    
    func prepareBackButtonForSearchBar() {
        self.backButtonOutlet.center = CGPoint(x: super.view.frame.width + super.view.frame.width/5.597, y:super.view.frame.height/12.35185)
    }
    
    func prepareBackButtonForCategories() {
        self.backButtonOutlet.center = CGPoint(x: super.view.frame.width/7.9, y:-super.view.frame.height/33.35)
    }
    
    func shrinkSearchBar() {
        if isSearchBarShrinked == false {
            prepareBackButtonForSearchBar()
            backButtonOutlet.setImage(#imageLiteral(resourceName: "Cancel"), for: .normal)
            UIView.animate(withDuration: 0.3, animations: {
                self.searchBarRightConstraint.constant = -super.view.frame.width/4.41176
                self.view.layoutIfNeeded()
            })
            UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: super.view.frame.width - super.view.frame.width/7.9, y:super.view.frame.height/12.35185)
            })
        }
        isSearchBarShrinked = true
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        searchBarOutlet.resignFirstResponder()
    }
    
    @IBAction func swipeAction (_ sender: UISwipeGestureRecognizer) {
        searchBarOutlet.resignFirstResponder()
        prepareButtonsForBack()
        moveLabelOut()
    }
    
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    @IBOutlet weak var searchBarConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchBarOutletTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchBarRightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var categoryLabelOutlet: UILabel!
    
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBAction func backButtonAction(_ sender: UIButton) {
        searchBarOutlet.resignFirstResponder()
        moveLabelOut()
    }
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var firstButtonOutlet: UIButton!
    @IBAction func firstButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Coding"
        moveLabelIn()
    }
    
    @IBOutlet weak var secondButtonOutlet: UIButton!
    @IBAction func secondButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Design"
        moveLabelIn()
    }
    
    @IBOutlet weak var thirdButtonOutlet: UIButton!
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Language"
        moveLabelIn()
    }
    
    @IBOutlet weak var fourthButtonOutlet: UIButton!
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Business"
        moveLabelIn()
    }
    
    @IBOutlet weak var fifthButtonOutlet: UIButton!
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Music"
        moveLabelIn()
    }
    
    @IBOutlet weak var sixthButtonOutlet: UIButton!
    @IBAction func sixthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Others"
        moveLabelIn()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
