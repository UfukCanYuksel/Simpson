//
//  ViewController.swift
//  Simpsons
//
//  Created by ufuk can yüksel on 10.06.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var simpsonsArray = [SimpsonModel]()
    
    var selecSimp : SimpsonModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = SimpsonModel(name: "Homer ", job: "İşssiz" , image: UIImage(named: "homer")! )
        
        let bart = SimpsonModel(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        
        let marge = SimpsonModel(name: "Marge", job: "Housewife", image: UIImage(named: "marge")!)
        
        let lisa = SimpsonModel(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        
                           
        simpsonsArray.append(homer)
        simpsonsArray.append(bart)
        simpsonsArray.append(marge)
        simpsonsArray.append(lisa)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonsArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        selecSimp = simpsonsArray[indexPath.row]
        
        self.performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecond"{
            let destinationCV = segue.destination as! twoVC
            destinationCV.selectedSimpson = selecSimp
        }
    }


}

