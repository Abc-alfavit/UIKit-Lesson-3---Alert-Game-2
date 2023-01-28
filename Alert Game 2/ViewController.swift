//
//  ViewController.swift
//  Alert Game 2
//
//  Created by Валентин Ремизов on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultsOutlet: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        resultsOutlet.text = "results - "
        let alertController = UIAlertController(title: "Hi", message: "Please, write (leohl)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Enter", style: .default) { _ in
            let valueUser = alertController.textFields?.first?.text ?? ""

            if valueUser == "leohl" {
                self.resultsOutlet.text! += "Hello"
            } else {
                self.resultsOutlet.text! += "Error"
            }

        }

        alertController.addAction(alertAction)
        self.present(alertController, animated: true)

        alertController.addTextField()
    }

}

//Вообще по заданию это должно отдаваться в модель, но люди просто создавали отдельную структуру ниже и там просто проверяли что ввел юзер, непонятно будет ли тоже через модель работать в клоужере или нет.
