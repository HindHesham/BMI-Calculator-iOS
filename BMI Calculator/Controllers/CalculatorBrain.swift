
import UIKit
struct CalculatorBrain{
    
    var bmi: BMI?

    func getBmiValue() -> String{
        let bmito1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmito1DecimalPlace
    }
    
    func getBmiAdvice() -> String{
        
        return bmi?.advice ?? "No Advice"
    }
    func getBmiColor() -> UIColor{
        return bmi?.colour ?? UIColor.white
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
        var advice: String
        var color : UIColor
        
        let bmiValue = weight / pow(height, 2)
        if(bmiValue < 18.5){
            advice = "under weight"
            color = UIColor.blue
            
        }else if( bmiValue < 24.9){
            advice = "normal weight"
            color = UIColor.green
        } else{
            advice = "over weight"
            color = UIColor.red
        }
        bmi = BMI(value: bmiValue, advice: advice, colour: color)
    }
   
}
