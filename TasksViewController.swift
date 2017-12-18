//
//  TasksViewController.swift
//  Inaldo&Tony
//
//  Created by Antonio Sirica on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit


class OnGoingTaskCell: UITableViewCell {
    
    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var skillRequestedLabel: UILabel!
    @IBOutlet weak var timeRequestedLabel: UILabel!
    @IBOutlet weak var timeLeftLabel: UILabel!
    @IBOutlet weak var animationImageView: UIImageView!
    
}

class oldTaskCell: UITableViewCell {
    
    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var timeRequestedLabel: UILabel!
    @IBOutlet weak var skillRequestedLabel: UILabel!
    
}


class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    
    var namesA = ["Cecilia", "Pasquale", "Astrogildo", "Natalia", "Lis", "Perna"]
    var surnamesA = ["Silva Ribeiro", "Antonio Ramos Ribeiro", "Toschi Magalhes", "Salti", "Pereira Rios", "Oliveira da Silva Sauro"]
    var skillsA = ["Coding", "Desing", "Business", "Languages", "Other", "Other"]
    var timeRequestedA = ["50", "90", "130", "100", "11", "30"]
    var timeLeftA = ["12", "7", "100", "800", "47", "99"]
    
    var namesB = ["Lucia Vania", "Isabel Pereira", "Sol", "Danilo", "Kameni", "Taita"]
    var surnamesB = ["Silvao", "Perkiasi Silva Saurao", "Lete de Vinci", "Robatini Perske", "Olsen", "Ramos"]
    var skillsB = ["Coding", "Coding", "Design", "Other", "Other", "Other"]
    var timeRequestedB = ["20", "90", "90", "30", "30", "10"]
    var timeLeftB = ["288", "500", "100", "39", "0", "10"]
    
    let tableSections = ["On Going", "Old" ]


    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        taskTableView.dataSource = self
        taskTableView.delegate = self
        
        taskTableView.sectionIndexColor = UIColor.white
        
        
    }
    
    //return the number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return tableSections.count
    }
    
    //return the title of sections
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.tableSections[section]
    }
    
    
    //return the rows number
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        switch(segmentedControl.selectedSegmentIndex)
        {
        case 0:
           return namesA.count
           
        case 1:
            return namesB.count
            
        default:
            return 1
        }
        
    }
    
    //return the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch(segmentedControl.selectedSegmentIndex) //SWITCH SEGMENTED
        {
        case 0:
            switch (indexPath.section) {  //SWITCH SECTION
            case 0: //ON GOING
                let cell = tableView.dequeueReusableCell(withIdentifier: "onGoingCell") as! OnGoingTaskCell
                cell.nameSurnameLabel?.text = namesA[indexPath.row] + " " + surnamesA[indexPath.row]
                cell.skillRequestedLabel?.text = skillsA[indexPath.row]
                cell.timeRequestedLabel?.text = "(" + timeRequestedA[indexPath.row] + " minutes)"
                cell.timeLeftLabel?.text = timeLeftA[indexPath.row]
                
                //cell.nameSurnameLabel?.sizeToFit()
                cell.nameSurnameLabel?.adjustsFontSizeToFitWidth = true
                cell.skillRequestedLabel?.sizeToFit()
                cell.timeRequestedLabel?.sizeToFit()
                cell.timeLeftLabel?.sizeToFit()
               
                onGoingCellAnimation(imageView: cell.animationImageView!)
                
                
                return cell
                
            case 1: //OLD
                let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell") as! oldTaskCell
                cell.nameSurnameLabel?.text = namesB[indexPath.row] + " " + surnamesB[indexPath.row]
                cell.skillRequestedLabel?.text = skillsB[indexPath.row]
                cell.timeRequestedLabel?.text = timeRequestedB[indexPath.row]
                
                cell.nameSurnameLabel.adjustsFontSizeToFitWidth = true
                cell.skillRequestedLabel.sizeToFit()
                cell.timeRequestedLabel.sizeToFit()
                
                
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell")
                
            }
            
        case 1:
            switch (indexPath.section) {  //SWITCH SECTION
            case 0: //ON GOING
                let cell = tableView.dequeueReusableCell(withIdentifier: "onGoingCell") as! OnGoingTaskCell
                cell.nameSurnameLabel?.text = namesB[indexPath.row] + " " + surnamesB[indexPath.row]
                cell.skillRequestedLabel?.text = skillsB[indexPath.row]
                cell.timeRequestedLabel?.text = "(" + timeRequestedB[indexPath.row] + " minutes)"
                cell.timeLeftLabel?.text = timeLeftB[indexPath.row]
                
                //cell.nameSurnameLabel?.sizeToFit()
                cell.nameSurnameLabel?.adjustsFontSizeToFitWidth = true
                cell.skillRequestedLabel?.sizeToFit()
                cell.timeRequestedLabel?.sizeToFit()
                cell.timeLeftLabel?.sizeToFit()
                
                onGoingCellAnimation(imageView: cell.animationImageView!)

                
                return cell
                
            case 1: //OLD
                let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell") as! oldTaskCell
                cell.nameSurnameLabel?.text = namesA[indexPath.row] + " " + surnamesB[indexPath.row]
                cell.skillRequestedLabel?.text = skillsA[indexPath.row]
                cell.timeRequestedLabel?.text = timeRequestedA[indexPath.row]
                
                cell.nameSurnameLabel.adjustsFontSizeToFitWidth = true
                cell.skillRequestedLabel.sizeToFit()
                cell.timeRequestedLabel.sizeToFit()
                
                
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell")
                
            }
            
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell")
                return cell!
              
            }
        let cell = tableView.dequeueReusableCell(withIdentifier: "oldCell")
        return cell!
    }
    
    
    @IBAction func Controller(_ sender: UISegmentedControl)
    {
        taskTableView.reloadData()
    }
    
    
    //Custom Animation Function on UIImageView
    func onGoingCellAnimation(imageView: UIImageView) {
        
        let loadingImagesAnimation: [UIImage] = [#imageLiteral(resourceName: "loading-0"),#imageLiteral(resourceName: "loading-1"),#imageLiteral(resourceName: "loading-2"),#imageLiteral(resourceName: "loading-3"),#imageLiteral(resourceName: "loading-4"),#imageLiteral(resourceName: "loading-5"),#imageLiteral(resourceName: "loading-6"),#imageLiteral(resourceName: "loading-7"),#imageLiteral(resourceName: "loading-8")]
        
        imageView.animationImages = loadingImagesAnimation
        imageView.animationDuration = 0.8
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
    }
    
    
    //TableView Custom Header
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        if let view = view as? UITableViewHeaderFooterView {
            view.backgroundView?.backgroundColor = UIColor.black
            view.textLabel?.textColor = UIColor.white
            view.textLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        }
        
    }

}
