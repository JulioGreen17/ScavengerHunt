//
//  TaskComposeViewController.swift
//  lab-task-squirrel dupe
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit

class TaskComposeViewController: UIViewController {
    
    var onComposeTask: ((Task) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var descriptionField: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    // CHecking if it is done
    @IBAction func didTapDoneButton(_ sender: Any) {
        guard let title = titleField.text, !title.isEmpty,
              let description = descriptionField.text, !description.isEmpty else {
            return}
        let task = Task(title: title, description: description)
        onComposeTask?(task)
        dismiss(animated: true)
    }


}
