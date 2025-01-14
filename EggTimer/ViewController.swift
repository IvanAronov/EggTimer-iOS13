import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var f: UILabel!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        secondsRemaining = eggTimes[hardness]!
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
        
    @objc func updateTimer() {
            if secondsRemaining > 0 {
                print ("\(secondsRemaining) seconds.")
                secondsRemaining -= 1
            } else {
                timer.invalidate()
                //titleLabel.text = "DONE!"
            }
    }
 
}
