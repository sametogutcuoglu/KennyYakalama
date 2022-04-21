//
//  ViewController.swift
//  KennyYakalama
//
//  Created by macOS on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kenny16: UIImageView!
    @IBOutlet weak var kenny15: UIImageView!
    @IBOutlet weak var kenny14: UIImageView!
    @IBOutlet weak var kenny13: UIImageView!
    
    @IBOutlet weak var kenny12: UIImageView!
    @IBOutlet weak var kenny11: UIImageView!
    @IBOutlet weak var kenny10: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny: UIImageView!
    
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblHighScore: UILabel!
    var time = Timer()
    var timer=10
    var KennyArry = [UIImageView()]
    var score = 0
    var historyScore : Int = 0
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        HighScoreGet()
        
        kenny.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny15.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny10.isUserInteractionEnabled = true
        kenny11.isUserInteractionEnabled = true
        kenny12.isUserInteractionEnabled = true
        kenny13.isUserInteractionEnabled = true
        kenny14.isUserInteractionEnabled = true
        kenny16.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer10 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer11 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer12 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer13 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer14 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognizer15 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        let gestureRecognize16 = UITapGestureRecognizer(target: self, action: #selector(kenyyClicked))
        
       kenny.addGestureRecognizer(gestureRecognizer3)
       kenny2.addGestureRecognizer(gestureRecognizer4)
       kenny3.addGestureRecognizer(gestureRecognizer5)
       kenny4.addGestureRecognizer(gestureRecognizer6)
       kenny5.addGestureRecognizer(gestureRecognizer7)
       kenny6.addGestureRecognizer(gestureRecognizer8)
       kenny7.addGestureRecognizer(gestureRecognizer9)
       kenny8.addGestureRecognizer(gestureRecognizer10)
       kenny9.addGestureRecognizer(gestureRecognizer11)
       kenny10.addGestureRecognizer(gestureRecognizer12)
       kenny11.addGestureRecognizer(gestureRecognizer13)
       kenny12.addGestureRecognizer(gestureRecognizer14)
       kenny13.addGestureRecognizer(gestureRecognizer15)
       kenny14.addGestureRecognizer(gestureRecognize16)
       kenny16.addGestureRecognizer(gestureRecognizer2)
        kenny15.addGestureRecognizer(gestureRecognizer)
        
        
        KennyArry = [kenny,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny10,kenny11,kenny9,kenny12,kenny13,kenny14,kenny15,kenny16]
    }
    
    @objc func sayac(){


         time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(fonksiyon), userInfo: nil, repeats: true)
        //git versiyon değişti mi ?

    }
    @objc func HighScoreGet() {
        
        historyScore = UserDefaults.standard.integer(forKey: "highScore")
        lblHighScore.text = "High Score : \(historyScore)"
        
    }
    
    @objc func AlertFun(){
        let alert = UIAlertController(title: "Get Started", message: "Again", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)  {UIAlertAction in
            
            self.HighScoreGet()
            
                                     
            }
        
        let TryButton = UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default) { [self] UIAlertAction in
            self.sayac()
            score = 0
            HighScoreGet()
            
        }
        alert.addAction(okButton)
        alert.addAction(TryButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AlertFun()
        KennyGizle()

    }
    
    @objc func kenyyClicked(){
        
        score += 1
        lblScore.text = "Score : \(score)"
        
        
        
    }
    
    @objc func KennyGizle() {
        

        for a in KennyArry {
            a.isHidden = true
        }
        

    }
    
    @objc func fonksiyon(){
        KennyGizle()
       // var randomIndex = Int.random(in: 1..<16)
        let randomIndex = Int(arc4random_uniform(UInt32(KennyArry.count-1)))
        
        
        KennyArry[randomIndex].isHidden = false
        
        timer -= 1
        lblTime.text="Time :\(timer)"
        if (timer == 0){
            AlertFun()
            //Yüksek skor kaydetme
            if (historyScore < score){
                UserDefaults.standard.set(score, forKey: "highScore")
            }
            
            time.invalidate()
            timer = 0
        }
        
    }


}

