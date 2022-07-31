//
//  ViewController.swift
//  CV_TableView
//
//  Created by Julia Semyzhenko on 7/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    let dataForGreenCell = [
        DataModel(years: "2010-2021", company: "AB BestCo iOS", position: "iOS - Eng"),
        DataModel(years: "2000-2010", company: "AB LLC", position: "Best Position")]
    
    
    
}



extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RedTableViewCell", for: indexPath)
            as! RedTableViewCell
            return cell
        }
        if indexPath.row == 1 || indexPath.row == 5  {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "BlueTableViewCell", for: indexPath)
            as! BlueTableViewCell
            if  indexPath.row == 5 {
                cell.blueCellImage.image = UIImage(named: "brain_image")
                cell.jobExperienceLabel.text  = "Skills"
            }
            
            return cell
        }
        else {
            let cell =  tableView.dequeueReusableCell(withIdentifier: "GreenTableViewCell", for: indexPath)
            as! GreenTableViewCell
            if  indexPath.row == 4 {
                cell.companyNameLabel.text = dataForGreenCell[0].company
                cell.positionLabel.text = dataForGreenCell[0].position
                cell.yearsLabel.text = dataForGreenCell[0].years
                
            }
            if  indexPath.row == 4 {
                cell.companyNameLabel.text = dataForGreenCell[1].company
                cell.positionLabel.text = dataForGreenCell[1].position
                cell.yearsLabel.text = dataForGreenCell[1].years
            }
            return cell
        }
    }
}

