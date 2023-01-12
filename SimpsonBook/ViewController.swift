//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Nolan Zhong on 1/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        // simpson object
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "Homer_Simpson_2006.png")!)
        let marge = Simpson(name: "Marge Simpson", job: "House Wife", image: UIImage(named: "marge simpson.png")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "Bart_Simpson.png")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "Lisa_Simpson.png")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggie simpson.png")!)
        let homerArray = [homer, marge, bart, lisa, maggie]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        return cell
    }


}

