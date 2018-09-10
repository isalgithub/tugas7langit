//
//  EditViewController.swift
//  7langit
//
//  Created by Faishal Alif on 9/9/18.
//  Copyright © 2018 Faishal Alif. All rights reserved.
//

import UIKit





class EditViewController: UIViewController {
    
    var titlelabel = ["First Name", "Last Name", "Mobile", "Email" ]
    var isilabel = ["Faishal", "Alif", "081290006028", "emailkerjaisal@gmail.com"]

    override func viewDidLoad() {
        super.viewDidLoad()

        profileImg.image = #imageLiteral(resourceName: "isal")
        profileImg.roundedImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBAction func backtoVC1(_ sender: Any) {
        performSegue(withIdentifier: "unwindsegueToVC1", sender: self)
    }
    
    @IBAction func backtovc(_ sender: Any) {
        performSegue(withIdentifier: "unwindsegueToVC1", sender: self)
    }
    

}

extension EditViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlelabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? EditContactTableViewCell
        cell?.titleLabel.text = titlelabel[indexPath.row]
        cell?.isiLabel.text = isilabel[indexPath.row]
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
}


