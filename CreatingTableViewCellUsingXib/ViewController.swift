//
//  ViewController.swift
//  CreatingTableViewCellUsingXib
//
//  Created by Vishal Jagtap on 31/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var studentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
        
        //register with XIB
        let nibName = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(nibName, forCellReuseIdentifier: "StudentTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as? StudentTableViewCell
        
        studentTableViewCell?.studentName.text = "Bhakti"
        studentTableViewCell?.studentRollNumber.text = "1"
        studentTableViewCell?.studentCity.text = "Pune"
        
        return studentTableViewCell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
