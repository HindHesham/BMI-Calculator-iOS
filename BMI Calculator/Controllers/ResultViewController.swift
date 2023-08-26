

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiColor: UIColor?
    var bmiAdvice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recalculatedPressed(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
    
}
