

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider){
        let height =
//        way to get a two decimel from the whole number
//        round(sender.value * 100) / 100.0
        String(format: "%.2f", sender.value)
        heightLabel.text = height+"m"
    }
   @IBAction func weightSliderChanged(_ sender: UISlider){
       
       //weight is a string
       let weight = String(format: "%.0f", sender.value)
       weightLabel.text = "\(weight)Kg"
    }
    
    
    @IBAction func calculatPressed(_ sender: Any) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        //sender means whos going to be the initiater of the segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.bmiAdvice = calculatorBrain.getBmiAdvice()
            destinationVC.bmiColor = calculatorBrain.getBmiColor()
            
        }
    }
    
}

