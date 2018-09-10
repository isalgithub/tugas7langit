//
//  DetailContactViewController.swift
//  7langit
//
//  Created by Faishal Alif on 9/8/18.
//  Copyright © 2018 Faishal Alif. All rights reserved.
//

import UIKit
import CoreData
import MessageUI

class DetailContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
//    var contact: NSManagedObject? = nil
//    var isDeleted: Bool = false
//    var indexPath: IndexPath? = nil
    var namafull = ["Faishal Alif"]
    var titlelabel = ["Mobile", "Email" ]
    var isi = ["081290006028", "emailkerjaisal@gmail.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        fullname.text = "Faishal Alif"
       profileImg.image = #imageLiteral(resourceName: "isal")
        profileImg.roundedImage()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isiLabel: UILabel!
    
    @IBAction func call(_ sender: UIButton) {
//        let url: NSURL = URL(string: "TEL://123456")! as NSURL
//        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func email(_ sender: Any) {
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["emailkerjaisal@gmail.com"])
        mailComposerVC.setSubject("email test")
        mailComposerVC.setMessageBody("how are ayo ?", isHTML: false)
        
        return mailComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "couldn't send email", message: "your device couldn't send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}



extension DetailContactViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlelabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DetailTableViewCell
        cell?.titleLabel.text = titlelabel[indexPath.row]
        cell?.isiLabel.text = isi [indexPath.row]
        
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
}
