//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Alexey on 30.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var valueRed: UILabel!
    @IBOutlet var valueGreen: UILabel!
    @IBOutlet var valueBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 15
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        valueRed.text = String(format: "%.2f", redSlider.value)
        valueGreen.text = String(format: "%.2f", greenSlider.value)
        valueBlue.text = blueSlider.value.formatted()

    }


    @IBAction func changeRedSlider() {
       
        valueRed.text = String(format: "%.2f", redSlider.value)
        setupColorView()
    }
    
    
    @IBAction func changeGreenSlider() {
        valueGreen.text = String(format: "%.2f", greenSlider.value)
        setupColorView()
     }

    
    
    @IBAction func changeBlueSlider() {
        valueBlue.text = String(format: "%.2f", blueSlider.value)
        setupColorView()
     }

    
    
}





// MARK: - Setup UI
extension ViewController {
    
    private func setupRedSlider() {
        redSlider.value = 0.1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .white
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.3
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.thumbTintColor = .white

    }
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .white

    }

    private func setupColorView() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1.0
        )
    }
    
}
