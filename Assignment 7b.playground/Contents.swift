// made on Dec 2018 
// made by Benjamin Hilderman
// made for ICS3U
// Ben's Cafe

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    
    // properties
    let numbersLabel = UILabel()
    let answerLabel = UILabel()
    let bensCafeLabel = UILabel()
    let cappuccinoLabel = UILabel()
    let cappuccinoButton = UIButton()
    let capCostLabel = UILabel()
    let frenchVanillaLabel = UILabel()
    let frenchVanillaButton = UIButton()
    let freCostLabel = UILabel()
    let latteLabel = UILabel()
    let latteButton = UIButton()
    let yesButton = UIButton()
    let yesCostLabel = UILabel()
    let noButton = UIButton()
    let noCostLabel = UILabel()
    let checkButton = UIButton()
    let latCostLabel = UILabel()
    let specialButton = UIButton()
    var numbers : [Int] = []
    let speCostLabel = UILabel()
    let specialDrink : [String] = ["Pumpkin Spice Latte", "Caramel Latte", "Candy cane Latte"]
    
    var todaysSpecial = UIImageView(image: UIImage(named: ""))
    var todaysSpecial2 = UIImageView(image: UIImage(named: ""))
    var todaysSpecial3 = UIImageView(image: UIImage(named: ""))
    var cappuccino = UIImageView(image: UIImage(named: "Cappuccino.PNG"))
    var latte = UIImageView(image: UIImage(named: "Latte.PNG"))
    var frenchVanilla = UIImageView(image: UIImage(named: "FrenchVanilla.PNG"))
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
    
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        view.addSubview(todaysSpecial)
        todaysSpecial.translatesAutoresizingMaskIntoConstraints = false
        todaysSpecial.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        todaysSpecial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130).isActive = true
        
        view.addSubview(todaysSpecial2)
        todaysSpecial2.translatesAutoresizingMaskIntoConstraints = false
        todaysSpecial2.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        todaysSpecial2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2).isActive = true
        
        view.addSubview(todaysSpecial3)
        todaysSpecial3.translatesAutoresizingMaskIntoConstraints = false
        todaysSpecial3.topAnchor.constraint(equalTo: view.topAnchor, constant: 1).isActive = true
        todaysSpecial3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160).isActive = true
    
        
        specialButton.setTitle("$5.13", for: .normal)
        specialButton.setTitleColor(.blue, for: .normal)
        specialButton.titleLabel?.textAlignment = .center
        specialButton.addTarget(self, action: #selector(specialCost), for: .touchUpInside)
        view.addSubview(specialButton)
        specialButton.translatesAutoresizingMaskIntoConstraints = false
        specialButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 290).isActive = true
        specialButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190).isActive = true
        
        speCostLabel.text = nil
        view.addSubview(speCostLabel)
        speCostLabel.translatesAutoresizingMaskIntoConstraints = false
        speCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        speCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
        view.addSubview(cappuccino)
        cappuccino.translatesAutoresizingMaskIntoConstraints = false
        cappuccino.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        cappuccino.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 265).isActive = true
        
        view.addSubview(latte)
        latte.translatesAutoresizingMaskIntoConstraints = false
        latte.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        latte.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 575).isActive = true
        
        view.addSubview(frenchVanilla)
        frenchVanilla.translatesAutoresizingMaskIntoConstraints = false
        frenchVanilla.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        frenchVanilla.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 425).isActive = true
        
        
        bensCafeLabel.text = "Ben's Cafe"
        view.addSubview(bensCafeLabel)
        bensCafeLabel.translatesAutoresizingMaskIntoConstraints = false
        bensCafeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        bensCafeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        view.addSubview(bensCafeLabel)
        
        
        checkButton.setTitle("Click To Order", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(order), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: bensCafeLabel.bottomAnchor, constant: 5).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        cappuccinoLabel.text = "Cappuccino"
        view.addSubview(cappuccinoLabel)
        cappuccinoLabel.translatesAutoresizingMaskIntoConstraints = false
        cappuccinoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85).isActive = true
        cappuccinoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 335).isActive = true
        view.addSubview(cappuccinoLabel)
        
        cappuccinoButton.setTitle("$3.96", for: .normal)
        cappuccinoButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        cappuccinoButton.addTarget(self, action: #selector(cappuccinoCost), for: .touchUpInside)
        view.addSubview(cappuccinoButton)
        cappuccinoButton.translatesAutoresizingMaskIntoConstraints = false
        cappuccinoButton.topAnchor.constraint(equalTo: bensCafeLabel.bottomAnchor, constant: 250).isActive = true
        cappuccinoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 335).isActive = true
        
        capCostLabel.text = nil
        view.addSubview(capCostLabel)
        capCostLabel.translatesAutoresizingMaskIntoConstraints = false
        capCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        capCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        frenchVanillaLabel.text = "French Vanilla"
        view.addSubview(frenchVanillaLabel)
        frenchVanillaLabel.translatesAutoresizingMaskIntoConstraints = false
        frenchVanillaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85).isActive = true
        frenchVanillaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 450).isActive = true
        view.addSubview(frenchVanillaLabel)
        
        freCostLabel.text = nil
        view.addSubview(freCostLabel)
        freCostLabel.translatesAutoresizingMaskIntoConstraints = false
        freCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        freCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        yesCostLabel.text = nil
        view.addSubview(yesCostLabel)
        yesCostLabel.translatesAutoresizingMaskIntoConstraints = false
        yesCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        yesCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        noCostLabel.text = nil
        view.addSubview(noCostLabel)
        noCostLabel.translatesAutoresizingMaskIntoConstraints = false
        noCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        noCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        frenchVanillaButton.setTitle("$2.68", for: .normal)
        frenchVanillaButton.setTitleColor(.blue, for: .normal)
        frenchVanillaButton.titleLabel?.textAlignment = .center
        frenchVanillaButton.addTarget(self, action: #selector(frenchVanillaCost), for: .touchUpInside)
        view.addSubview(frenchVanillaButton)
        frenchVanillaButton.translatesAutoresizingMaskIntoConstraints = false
        frenchVanillaButton.topAnchor.constraint(equalTo: bensCafeLabel.bottomAnchor, constant: 250).isActive = true
        frenchVanillaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 500).isActive = true
        
        
        latteLabel.text = "Latte"
        view.addSubview(latteLabel)
        latteLabel.translatesAutoresizingMaskIntoConstraints = false
        latteLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85).isActive = true
        latteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 640).isActive = true
        view.addSubview(latteLabel)
        
        latteButton.setTitle("$4.67", for: .normal)
        latteButton.setTitleColor(.blue, for: .normal)
        latteButton.titleLabel?.textAlignment = .center
        latteButton.addTarget(self, action: #selector(latteCost), for: .touchUpInside)
        view.addSubview(latteButton)
        latteButton.translatesAutoresizingMaskIntoConstraints = false
        latteButton.topAnchor.constraint(equalTo: bensCafeLabel.bottomAnchor, constant: 250).isActive = true
        latteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 640).isActive = true
        
        
        yesButton.setTitle("Yes", for: .normal)
        yesButton.setTitleColor(.blue, for: .normal)
        yesButton.titleLabel?.textAlignment = .center
        yesButton.addTarget(self, action: #selector(yesCost), for: .touchUpInside)
        view.addSubview(yesButton)
        yesButton.translatesAutoresizingMaskIntoConstraints = false
        yesButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        yesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        noButton.setTitle("No", for: .normal)
        noButton.setTitleColor(.blue, for: .normal)
        noButton.titleLabel?.textAlignment = .center
        noButton.addTarget(self, action: #selector(noCost), for: .touchUpInside)
        view.addSubview(noButton)
        noButton.translatesAutoresizingMaskIntoConstraints = false
        noButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        noButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        
        
        
        latCostLabel.text = nil
        view.addSubview(latCostLabel)
        latCostLabel.translatesAutoresizingMaskIntoConstraints = false
        latCostLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350).isActive = true
        latCostLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    //changes array numbers to .PNG images
    func getImageName(card : Int) -> String {
        var imageName : String = String(card) + ".png"
        return imageName
    }
    
    @objc func order() {
        for counter in 1 ... 1 {
            var randomNumber : Int = Int(arc4random_uniform(3) + 1 )
            numbers.append(randomNumber)
        }
        
        let specialName = getImageName(card: Int(numbers[0]))
        
        todaysSpecial.image = UIImage(named: specialName)
        
        numbersLabel.text = "Today's special is: " + specialDrink[numbers[0] - 1]
        view.addSubview(numbersLabel)
        numbersLabel.translatesAutoresizingMaskIntoConstraints = false
        numbersLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 85).isActive = true
        numbersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func cappuccinoCost() {
        capCostLabel.text = "The cost is $3.96, would you like a cookie with it?"   
    }
    @objc func frenchVanillaCost() {
        freCostLabel.text = "The cost is $2.68, would you like a cookie with it?"
    }
    @objc func latteCost() {
        latCostLabel.text = "The cost is $4.67, would you like a cookie with it?"
    }
    @objc func specialCost() {
        speCostLabel.text = "The cost is $5.13, would you like a cookie with it?"
    }
    @objc func yesCost() {
        yesCostLabel.text = "The extra cost is 75 cents, your coffee will be prepared in store"
    }
    @objc func noCost() {
        noCostLabel.text = "Your coffee will be prepared in store"
    }
        
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


