//
//  ViewController.swift
//  ConvertidorTemperatura
//
//  Created by user194082 on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    let temperatureConverter = TemperatureConverter()
    
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertToFahrenheit(_ sender: UIButton) {
        fahrenheitTextField.text = ""
        
        if let celciusValue = celsiusTextField.text {
                    if !celciusValue.isEmpty {
                        let fahrenheitValue = temperatureConverter.convert(temperature: Temperature(value: Float16(celciusValue)!, unit: Temperature.Unit.CELSIUS), unitToConvert: Temperature.Unit.FAHRENHEIT)
                        print("Farenheit " + String(fahrenheitValue.value))
                        fahrenheitTextField.text = String(fahrenheitValue.value)
                    } else {
                        print("Celcius value is empty")
                    }
                }

    }
}

