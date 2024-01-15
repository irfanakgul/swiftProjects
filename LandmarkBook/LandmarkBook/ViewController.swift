//
//  ViewController.swift
//  LandmarkBook
//
//  Created by IrfanAkgul on 15/01/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    // create a list for city names and imagines as empty
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // involved in protokols
        tableView.delegate = self
        tableView.dataSource = self
        
        // add city names
        landmarkNames.append("barca")
        landmarkNames.append("istanbul")
        landmarkNames.append("paris")
        landmarkNames.append("prag")
        landmarkNames.append("roma")
        
        // add photos.
        landmarkImages.append(UIImage(named: "barca")!)
        landmarkImages.append(UIImage(named: "istanbul")!)
        landmarkImages.append(UIImage(named: "paris")!)
        landmarkImages.append(UIImage(named: "prag")!)
        landmarkImages.append(UIImage(named: "roma")!)
        
        
        
        
        
    }

    // this auto func identify how many row will be.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    
    // identify what will show for each row/cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration  = content
        return cell
    }
    
    // perform code what will happen when each row selected.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        // update chosen names and images
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    // connect to new VC and reach all itemsin new viewcontrol  (new page)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)  // ustte siliyor ama ekrana yansitmiyor. burada ekrana yansitmayi yapiyor.
        }
    }
}

