//
//  ViewController.swift
//  bank2
//
//  Created by Daniel Pereira on 24/11/14.
//  Copyright (c) 2014 depp. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var bankValue: UITextField!
    @IBOutlet var optionsView: UIView!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var name4: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var nDeJugadores: UISegmentedControl!
    @IBOutlet weak var j3j: UILabel!
    @IBOutlet weak var j4j: UILabel!
    @IBOutlet weak var j5j: UILabel!
    @IBOutlet weak var j6j: UILabel!
    @IBOutlet weak var viewPay: UIView!

    class player {
        let txt = UITextField(frame: CGRectMake(-5, -5, 1, 1))
        
        let background = UIView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width * 0.421875, UIScreen.mainScreen().bounds.height * 0.09507042))
        
        let name = UITextField(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width * 0.421875, UIScreen.mainScreen().bounds.height * 0.04401408))
        
        let valance = UITextField(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height * 0.05105634, UIScreen.mainScreen().bounds.width * 0.34375, UIScreen.mainScreen().bounds.height * 0.0440140))
        
        let money = UILabel(frame: CGRectMake(UIScreen.mainScreen().bounds.width * 0.34375, UIScreen.mainScreen().bounds.height * 0.05105634, UIScreen.mainScreen().bounds.width * 0.078125, UIScreen.mainScreen().bounds.height * 0.04401408))
        
        let cover = UIView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width * 0.421875, UIScreen.mainScreen().bounds.height * 0.09507042))
        
        var dinero = 0
        
        func setProperties (nickName: String, x: CGFloat, y: CGFloat, color: UIColor) -> Void{
            name.text = nickName
            name.textAlignment = NSTextAlignment.Center
            background.frame.origin.x = UIScreen.mainScreen().bounds.width * x
            background.frame.origin.y = UIScreen.mainScreen().bounds.height * y
            self.background.backgroundColor = color
        }
        
        func setNameCenter (nickName: String) -> Void{
            name.text = nickName
            name.textAlignment = NSTextAlignment.Center
        }
        
        func setNameLeft (nickName: String) -> Void{
            name.text = nickName
            name.textAlignment = NSTextAlignment.Left
        }
        
        func setNameRight (nickName: String) -> Void{
            name.text = nickName
            name.textAlignment = NSTextAlignment.Right
        }
        
        func reset (sender: String) -> Void {
            valance.text = "0"
            dinero = 0
            
        }
        
        func text (sender: String) -> Void {
            name.textAlignment = NSTextAlignment.Center
            valance.textAlignment = NSTextAlignment.Right
            money.textAlignment = NSTextAlignment.Center
            valance.text = "0"
            money.text = "$"
            
        }
    }
    
    class button {
        let background = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        
        func setButtonNameCenter (sender: String) -> Void {
            background.setTitle(sender, forState: UIControlState.Normal)
            background.frame.size = CGSizeMake(UIScreen.mainScreen().bounds.width/4, UIScreen.mainScreen().bounds.height * 0.07746479)
            background.titleLabel?.textAlignment = NSTextAlignment.Center
            
        }
        
        func setButtonNameBank (sender: String) -> Void {
            background.setTitle(sender, forState: UIControlState.Normal)
            background.frame.size = CGSizeMake(UIScreen.mainScreen().bounds.width/4, UIScreen.mainScreen().bounds.height * 0.10318638)
            background.titleLabel?.textAlignment = NSTextAlignment.Left
        }
    }
    
    var player1 = player()
    var player2 = player()
    var player3 = player()
    var player4 = player()
    var player5 = player()
    var player6 = player()
    var playerTable = player()
    
    let btn1 = button()
    let btn2 = button()
    let btn3 = button()
    let btn4 = button()
    let btn5 = button()
    let btn6 = button()
    let btn7 = button()
    let btn8 = button()
    let btn9 = button()
    let btn0 = button()
    let btnPoint = button()
    let btnDelete = button()
    let btnM = button()
    let btnK = button()
    let btnClear = button()
    let less = button()
    let up = button()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bounds:CGRect = UIScreen.mainScreen().bounds
        let width: CGFloat = UIScreen.mainScreen().bounds.size.width
        let height: CGFloat = UIScreen.mainScreen().bounds.size.height
        
        //////////////Section 1 //////////////
        
        let viewPlayer = UIView(frame: CGRectMake(0, 0, width, 311))
        let payView = UIView(frame: CGRectMake(0, height * 0.54753521, width, height * 0.14260563))
        let keyboardView = UIView(frame: CGRectMake(0, height * 0.69014085, width, height * 0.30985915))

        
        let viewPlayerCover = UIView(frame: CGRectMake(0, 0, width, 311))
        viewPlayer.backgroundColor = UIColor.whiteColor()
        
        player1.text("")
        player2.text("")
        player3.text("")
        player4.text("")
        player5.text("")
        player6.text("")
        playerTable.text("")
        
        //player 1 ///////////////////////////////////////////////////
        player1.setProperties("J1", x: 0.05, y: 0.08274648, color: UIColor.cyanColor())
        player1.background.addSubview(player1.name)
        player1.background.addSubview(player1.valance)
        player1.background.addSubview(player1.money)
        viewPlayer.addSubview(player1.background)

        //player 2 ///////////////////////////////////////////////////
        player2.setProperties("J2", x: 0.528125, y: 0.08274648, color: UIColor.magentaColor())
        player2.background.addSubview(player2.name)
        player2.background.addSubview(player2.valance)
        player2.background.addSubview(player2.money)
        viewPlayer.addSubview(player2.background)

        //player 3 ///////////////////////////////////////////////////
        player3.setProperties("J3", x: 0.05, y: 0.19894366, color: UIColor.orangeColor())
        player3.background.addSubview(player3.name)
        player3.background.addSubview(player3.valance)
        player3.background.addSubview(player3.money)
        viewPlayer.addSubview(player3.background)

        //player 4 ///////////////////////////////////////////////////
        player4.setProperties("J4", x: 0.528125, y: 0.19894366, color: UIColor.yellowColor())
        player4.background.addSubview(player4.name)
        player4.background.addSubview(player4.valance)
        player4.background.addSubview(player4.money)
        viewPlayer.addSubview(player4.background)

        //player 5 ///////////////////////////////////////////////////
        player5.setProperties("J5", x: 0.05, y: 0.31514085, color: UIColor.brownColor())
        player5.background.addSubview(player5.name)
        player5.background.addSubview(player5.valance)
        player5.background.addSubview(player5.money)
        viewPlayer.addSubview(player5.background)

        //player 6 ///////////////////////////////////////////////////
        player6.setProperties("J6", x: 0.528125, y: 0.31514085, color: UIColor.redColor())
        player6.background.addSubview(player6.name)
        player6.background.addSubview(player6.valance)
        player6.background.addSubview(player6.money)
        viewPlayer.addSubview(player6.background)

        //player Table ///////////////////////////////////////////////////
        playerTable.background.frame = CGRectMake(width * 0.05, height * 0.43133803, width - width * 0.1, height * 0.09507042)
        playerTable.background.backgroundColor = UIColor.lightGrayColor()
        playerTable.setNameCenter("Tablero")
        playerTable.name.frame = CGRectMake(0, 0, width-32, 25)
        playerTable.valance.frame.origin.x = width * 0.125
        playerTable.money.frame.origin.x = height * 0.26408451
        
        viewPlayer.addSubview(playerTable.background)
        playerTable.background.addSubview(playerTable.name)
        playerTable.background.addSubview(playerTable.valance)
        playerTable.background.addSubview(playerTable.money)
        
        
        viewPlayer.addSubview(viewPlayerCover)
        self.view.addSubview(viewPlayer)
        
        ////////////// Section 2 //////////////
        
        
        //Less Button //////////////////////////////////
        
        less.setButtonNameCenter("Monopoly")
        
        less.background.frame.origin.x = width * 0.05
        less.background.frame.origin.y = height * 0.01760563
        //less.background.titleLabel?.textAlignment = NSTextAlignment.Left
        less.background.addTarget(self, action: "less:", forControlEvents: UIControlEvents.TouchUpInside)
        
        payView.addSubview(less.background)
        
        //Up Button ////////////////////////////////////////
        
        up.setButtonNameCenter("Monopoly")
        
        up.background.frame.origin.x = width * 0.725
        up.background.frame.origin.y = height * 0.01760563
        up.background.titleLabel?.textAlignment = NSTextAlignment.Right
        up.background.addTarget(self, action: "up:", forControlEvents: UIControlEvents.TouchUpInside)
        
        payView.addSubview(up.background)
        
        //Transfer /////////////////////////////////
        
        let transfer = UITextField()
        transfer.frame = CGRectMake(width*0.3, height * 0.09, width*0.24411408, height * 0.05)
        transfer.text = " "
        transfer.textAlignment = NSTextAlignment.Right
        transfer.font = UIFont(name: "helvetica neue", size: 14)
        transfer.textColor = up.background.titleLabel?.textColor
        payView.addSubview(transfer)
        
        let cover = UIView(frame: CGRectMake(width*0.3, height*0.04225352, width*0.45, height*0.12313944))
        
        let label = UITextField(frame: CGRectMake(width * 0.55, height * 0.09, width * 0.03, height * 0.05))
        label.text = "$"
        label.font = UIFont(name: "helvetica neue", size: 14)
        label.textColor = up.background.titleLabel?.textColor
        payView.addSubview(label)
        ////////////////////////////////
        payView.addSubview(cover)
        
        // Arrow ///////////////////////////
        var imageView = UIImageView(frame: CGRectMake(width*0.375, height*0.03521127, width*0.275, height*0.05309735));
        var image = UIImage(named: "right-arrow.jpg");
        imageView.image = image;
        payView.addSubview(imageView)
        self.view.addSubview(payView)
        
        
        
        /////////////////////////////section 3 //////////////////////////////////
        //btn
        btn1.background.frame.origin.x = 0
        btn1.background.frame.origin.y = 0
        btn2.background.frame.origin.x = width / 4
        btn2.background.frame.origin.y = 0
        btn3.background.frame.origin.x = width / 4 * 2
        btn3.background.frame.origin.y = 0
        btn4.background.frame.origin.x = 0
        btn4.background.frame.origin.y = height * 0.07746479
        btn5.background.frame.origin.x = width / 4
        btn5.background.frame.origin.y = height * 0.07746479
        btn6.background.frame.origin.x = width / 2
        btn6.background.frame.origin.y = height * 0.07746479
        btn7.background.frame.origin.x = 0
        btn7.background.frame.origin.y = height * 0.07746479 * 2
        btn8.background.frame.origin.x = width / 4
        btn8.background.frame.origin.y = height * 0.07746479 * 2
        btn9.background.frame.origin.x = width / 2
        btn9.background.frame.origin.y = height * 0.07746479 * 2
        btn0.background.frame.origin.x = width / 4
        btn0.background.frame.origin.y = height * 0.07746479 * 3
        btnPoint.background.frame.origin.x = 0
        btnPoint.background.frame.origin.y = (height * 0.07746479) * 3
        btnDelete.background.frame.origin.x = width / 2
        btnDelete.background.frame.origin.y = (height * 0.07746479) * 3
        btnM.background.frame.origin.x = width/4*3
        btnM.background.frame.origin.y = 0
        btnK.background.frame.origin.x = width/4*3
        btnK.background.frame.origin.y = height * 0.10316901
        btnClear.background.frame.origin.x = width/4*3
        btnClear.background.frame.origin.y = height * 0.10316901 * 2
        
        btn1.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn2.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn3.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn4.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn5.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn6.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn7.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn8.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn9.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        btn0.background.addTarget(self, action: "tappedButton:", forControlEvents: UIControlEvents.TouchUpInside)
        
        btnPoint.background.addTarget(self, action: "tappedButton2:", forControlEvents: UIControlEvents.TouchUpInside)
        btnDelete.background.addTarget(self, action: "tappedButton2:", forControlEvents: UIControlEvents.TouchUpInside)
        btnM.background.addTarget(self, action: "tappedButton2:", forControlEvents: UIControlEvents.TouchUpInside)
        btnK.background.addTarget(self, action: "tappedButton2:", forControlEvents: UIControlEvents.TouchUpInside)
        btnClear.background.addTarget(self, action: "tappedButton2:", forControlEvents: UIControlEvents.TouchUpInside)
        
        btn1.setButtonNameCenter("1")
        btn2.setButtonNameCenter("2")
        btn3.setButtonNameCenter("3")
        btn4.setButtonNameCenter("4")
        btn5.setButtonNameCenter("5")
        btn6.setButtonNameCenter("6")
        btn7.setButtonNameCenter("7")
        btn8.setButtonNameCenter("8")
        btn9.setButtonNameCenter("9")
        btn0.setButtonNameCenter("0")
        btnPoint.setButtonNameCenter(".")
        btnDelete.setButtonNameCenter("<")
        btnM.setButtonNameBank("M")
        btnK.setButtonNameBank("K")
        btnClear.setButtonNameBank("Clear")
        
        keyboardView.addSubview(btn1.background)
        keyboardView.addSubview(btn2.background)
        keyboardView.addSubview(btn3.background)
        keyboardView.addSubview(btn4.background)
        keyboardView.addSubview(btn5.background)
        keyboardView.addSubview(btn6.background)
        keyboardView.addSubview(btn7.background)
        keyboardView.addSubview(btn8.background)
        keyboardView.addSubview(btn9.background)
        keyboardView.addSubview(btn0.background)
        keyboardView.addSubview(btnPoint.background)
        keyboardView.addSubview(btnDelete.background)
        keyboardView.addSubview(btnM.background)
        keyboardView.addSubview(btnK.background)
        keyboardView.addSubview(btnClear.background)
        
        self.view.addSubview(keyboardView)
        
        // Options ///////////////////////////////////
        let container = UIView()
        container.frame = CGRect(x: 0, y: height*0.05, width: width, height: height)
        container.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(container)
        
        let j11: UILabel = UILabel()
        j11.frame = CGRectMake( width * 0.078125, height*0.04929577 ,width*0.071875, height*0.04049296)
        j11.text = "J1"
        j11.backgroundColor = UIColor.clearColor()
        
        let j21: UILabel = UILabel()
        j21.frame = CGRectMake( width * 0.078125, height * 0.11619718,width*0.071875, height*0.04049296)
        j21.text = "J2"
        j21.backgroundColor = UIColor.clearColor()
        
        let j31: UILabel = UILabel()
        j31.frame = CGRectMake( width * 0.078125, height * 0.18309859 ,width*0.071875, height*0.04049296)
        j31.text = "J3"
        j31.backgroundColor = UIColor.clearColor()
        
        let j41: UILabel = UILabel()
        j41.frame = CGRectMake( width * 0.078125, height*0.25 ,width*0.071875, height*0.04049296)
        j41.text = "J4"
        j41.backgroundColor = UIColor.clearColor()
        
        let j51: UILabel = UILabel()
        j51.frame = CGRectMake( width * 0.078125, height * 0.31690141,width*0.071875, height*0.04049296)
        j51.text = "J5"
        j51.backgroundColor = UIColor.clearColor()
        
        let j61: UILabel = UILabel()
        j61.frame = CGRectMake( width * 0.078125, height * 0.38380282,width*0.071875, height*0.04049296)
        j61.text = "J6"
        j61.backgroundColor = UIColor.clearColor()
        
        var text1: UITextField = UITextField()
        text1.frame = CGRectMake(width * 0.375, height*0.04929577 , width * 0.575, height*0.0528160)
        text1.borderStyle = UITextBorderStyle.RoundedRect
        text1.addTarget(self, action: "btn1:", forControlEvents: UIControlEvents.TouchUpInside)
        text1.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        var text2: UITextField = UITextField()
        text2.frame = CGRectMake(width * 0.375, height * 0.11619718, width * 0.575, height*0.0528160)
        text2.borderStyle = UITextBorderStyle.RoundedRect
        text2.addTarget(self, action: "btn2:", forControlEvents: UIControlEvents.TouchUpInside)
        text2.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        var text3: UITextField = UITextField()
        text3.frame = CGRectMake(width * 0.375, height * 0.18309859, width * 0.575, height*0.0528160)
        text3.borderStyle = UITextBorderStyle.RoundedRect
        text3.addTarget(self, action: "btn3:", forControlEvents: UIControlEvents.TouchUpInside)
        text3.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        var text4: UITextField = UITextField()
        text4.frame = CGRectMake(width * 0.375, height*0.25, width * 0.575, height*0.0528160)
        text4.borderStyle = UITextBorderStyle.RoundedRect
        text4.addTarget(self, action: "btn4:", forControlEvents: UIControlEvents.TouchUpInside)
        text4.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        var text5: UITextField = UITextField()
        text5.frame = CGRectMake(width * 0.375, height * 0.31690141, width * 0.575, height*0.0528160)
        text5.borderStyle = UITextBorderStyle.RoundedRect
        text5.addTarget(self, action: "btn5:", forControlEvents: UIControlEvents.TouchUpInside)
        text5.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        var text6: UITextField = UITextField()
        text6.frame = CGRectMake(width * 0.375, height * 0.38380282, width * 0.575, height*0.0528160)
        text6.borderStyle = UITextBorderStyle.RoundedRect
        text6.addTarget(self, action: "btn6:", forControlEvents: UIControlEvents.TouchUpInside)
        text6.clearButtonMode = UITextFieldViewMode.WhileEditing
        
        let jugadores: UILabel = UILabel()
        jugadores.frame = CGRectMake( 0, height * 0.48591549,width, height * 0.04049296)
        jugadores.text = "Nº de jugadores"
        jugadores.textAlignment = NSTextAlignment.Center
        
        let nJugadores = UISegmentedControl (items: ["2","3","4","5","6"])
        nJugadores.frame = CGRectMake(width * 0.05, height * 0.54401408,width * 0.9, height * 0.0528169)
        nJugadores.selectedSegmentIndex = 4
        nJugadores.addTarget(self, action: "segmentedValueChanged:", forControlEvents: .ValueChanged)
        
        let txT: UITextField = UITextField()
        txT.frame = CGRectMake(-2, -2, 1, 1)
        
        self.view.addSubview(txT);
        
        var btnReset = UIButton.buttonWithType(UIButtonType.System) as!  UIButton
        btnReset.frame = CGRectMake(width * 0.34375, height * 0.61619718, width * 0.3125, 50)
        btnReset.setTitle("Reset", forState: UIControlState.Normal)
        btnReset.addTarget(self, action: "reset:", forControlEvents:     UIControlEvents.TouchUpInside)
        btnReset.titleLabel?.textAlignment = NSTextAlignment.Center
        btnReset.titleLabel?.font = UIFont(name: "helvetica neue", size: 14)
        container.addSubview(btnReset)
        
        container.addSubview(nJugadores)
        container.addSubview(jugadores)
        container.addSubview(text1)
        container.addSubview(text2)
        container.addSubview(text3)
        container.addSubview(text4)
        container.addSubview(text5)
        container.addSubview(text6)
        container.addSubview(j11)
        container.addSubview(j21)
        container.addSubview(j31)
        container.addSubview(j41)
        container.addSubview(j51)
        container.addSubview(j61)
        container.hidden = true
        
        // Misc //////////////////////
        bankValue = transfer
        optionsView = container
        nDeJugadores = nJugadores
        
        name1 = text1
        name2 = text2
        name3 = text3
        name4 = text4
        name5 = text5
        name6 = text6
        
        name1.delegate = self
        name2.delegate = self
        name3.delegate = self
        name4.delegate = self
        name5.delegate = self
        name6.delegate = self
        
        j3j = j31
        j4j = j41
        j5j = j51
        j6j = j61
        
        viewPay = payView
        
        // btn Options ////////////////
        var opciones = UIButton.buttonWithType(UIButtonType.System) as!  UIButton
        opciones.frame = CGRectMake(width*0.73, height*0.03521127, width*0.22, height*0.04)
        opciones.setTitle("Opciones", forState: UIControlState.Normal)
        opciones.addTarget(self, action: "opciones:", forControlEvents:     UIControlEvents.TouchUpInside)
        opciones.titleLabel?.textAlignment = NSTextAlignment.Right
        self.view.addSubview(opciones)
    }
    
    func reset(sender: UIButton){
        var alert = UIAlertController(title: "Seguro que desea reiniciar?", message: "El juego se reiniciara y se perderan todos los datos", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alert, animated: true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "Reiniciar", style: UIAlertActionStyle.Destructive, handler: { action in
            switch action.style{
            case .Default:
                println("destructive")
                
            case .Cancel:
                println("cancel")
                
            case .Destructive:
                println("destructive")
                
                self.player1.reset("")
                self.player2.reset("")
                self.player3.reset("")
                self.player4.reset("")
                self.player5.reset("")
                self.player6.reset("")
                self.playerTable.reset("")
                self.bankValue.text = ""
            }}))
    }

    func opciones(sender: UIButton){
        if optionsView.hidden == true {
            optionsView.hidden = false
        }else{optionsView.hidden = true
            
            if name1.text != "" {player1.name.text = name1.text}else{player1.setNameCenter("J1")}
            if name2.text != "" {player2.name.text = name2.text}else{player2.setNameCenter("J2")}
            if name3.text != "" {player3.name.text = name3.text}else{player3.setNameCenter("J3")}
            if name4.text != "" {player4.name.text = name4.text}else{player4.setNameCenter("J4")}
            if name5.text != "" {player5.name.text = name5.text}else{player5.setNameCenter("J5")}
            if name6.text != "" {player6.name.text = name6.text}else{player6.setNameCenter("J6")}
            name1.resignFirstResponder()
            name2.resignFirstResponder()
            name3.resignFirstResponder()
            name4.resignFirstResponder()
            name5.resignFirstResponder()
            name6.resignFirstResponder()
            
        }
    }
    
    func tappedButton(sender: UIButton){
        println(sender.titleLabel?.text)
        player1.txt.text = sender.titleLabel?.text
        bankValue.text = bankValue.text + player1.txt.text
    }
    
    func tappedButton2(sender: UIButton){
        player1.txt.text = sender.titleLabel?.text
        
        if player1.txt.text == "<" {
            let str = bankValue.text
            let substr = str.substringToIndex(str.endIndex.predecessor())
            bankValue.text = substr
            if bankValue.text == "" {bankValue.text = " "}
        }
        
        if player1.txt.text == "K"{
            //alertView.show()
            
            
            var asd = (bankValue.text as NSString).integerValue
            println(asd)
            if up.background.titleLabel?.text == player1.name.text {
                player1.dinero += asd
                player1.valance.text = "\(player1.dinero)"}
            if up.background.titleLabel?.text == player2.name.text {
                player2.dinero += asd
                player2.valance.text = "\(player2.dinero)"}
            if up.background.titleLabel?.text == player3.name.text {
                player3.dinero += asd
                player3.valance.text = "\(player3.dinero)"}
            if up.background.titleLabel?.text == player4.name.text {
                player4.dinero += asd
                player4.valance.text = "\(player4.dinero)"}
            if up.background.titleLabel?.text == player5.name.text {
                player5.dinero += asd
                player5.valance.text = "\(player5.dinero)"}
            if up.background.titleLabel?.text == player6.name.text {
                player6.dinero += asd
                player6.valance.text = "\(player6.dinero)"}
            if up.background.titleLabel?.text == "Tablero" {
                playerTable.dinero += asd
                playerTable.valance.text = "\(playerTable.dinero)"}
            
            
            if less.background.titleLabel?.text == player1.name.text {
                player1.dinero -= asd
                player1.valance.text = "\(player1.dinero)"}
            if less.background.titleLabel?.text == player2.name.text {
                player2.dinero -= asd
                player2.valance.text = "\(player2.dinero)"}
            if less.background.titleLabel?.text == player3.name.text {
                player3.dinero -= asd
                player3.valance.text = "\(player3.dinero)"}
            if less.background.titleLabel?.text == player4.name.text {
                player4.dinero -= asd
                player4.valance.text = "\(player4.dinero)"}
            if less.background.titleLabel?.text == player5.name.text {
                player5.dinero -= asd
                player5.valance.text = "\(player5.dinero)"}
            if less.background.titleLabel?.text == player6.name.text {
                player6.dinero -= asd
                player6.valance.text = "\(player6.dinero)"}
            if less.background.titleLabel?.text == "Tablero" {
                playerTable.dinero -= asd
                playerTable.valance.text = "\(playerTable.dinero)"}
            
            bankValue.text = ""
            less.setButtonNameCenter("Monopoly")
            up.setButtonNameCenter("Monopoly")
        }
        
        
        if player1.txt.text == "M"{
            // alertView.show()
            
            var sdf = (bankValue.text as NSString).doubleValue
            var ler = UITextField()
            ler.text = "\(sdf * 1000)"
            var asd = (ler.text as NSString).integerValue
            println(asd)
            
            if up.background.titleLabel?.text == player1.name.text {
                player1.dinero += asd
                player1.valance.text = "\(player1.dinero)"}
            if up.background.titleLabel?.text == player2.name.text {
                player2.dinero += asd
                player2.valance.text = "\(player2.dinero)"}
            if up.background.titleLabel?.text == player3.name.text {
                player3.dinero += asd
                player3.valance.text = "\(player3.dinero)"}
            if up.background.titleLabel?.text == player4.name.text {
                player4.dinero += asd
                player4.valance.text = "\(player4.dinero)"}
            if up.background.titleLabel?.text == player5.name.text {
                player5.dinero += asd
                player5.valance.text = "\(player5.dinero)"}
            if up.background.titleLabel?.text == player6.name.text {
                player6.dinero += asd
                player6.valance.text = "\(player6.dinero)"}
            if up.background.titleLabel?.text == "Tablero" {
                playerTable.dinero += asd
                playerTable.valance.text = "\(playerTable.dinero)"}
            
            
            if less.background.titleLabel?.text == player1.name.text {
                player1.dinero -= asd
                player1.valance.text = "\(player1.dinero)"}
            if less.background.titleLabel?.text == player2.name.text {
                player2.dinero -= asd
                player2.valance.text = "\(player2.dinero)"}
            if less.background.titleLabel?.text == player3.name.text {
                player3.dinero -= asd
                player3.valance.text = "\(player3.dinero)"}
            if less.background.titleLabel?.text == player4.name.text {
                player4.dinero -= asd
                player4.valance.text = "\(player4.dinero)"}
            if less.background.titleLabel?.text == player5.name.text {
                player5.dinero -= asd
                player5.valance.text = "\(player5.dinero)"}
            if less.background.titleLabel?.text == player6.name.text {
                player6.dinero -= asd
                player6.valance.text = "\(player6.dinero)"}
            if less.background.titleLabel?.text == "Tablero" {
                playerTable.dinero -= asd
                playerTable.valance.text = "\(playerTable.dinero)"}
            
            bankValue.text = ""
            less.setButtonNameCenter("Monopoly")
            up.setButtonNameCenter("Monopoly")
        }
        
        if player1.txt.text == "Clear" {
            up.setButtonNameCenter("Monopoly")
            less.setButtonNameCenter("Monopoly")
            bankValue.text = " "
        }
        
        
    }
    
    func up(sender: UIButton){
        if nDeJugadores.selectedSegmentIndex == 0
        {if up.background.titleLabel?.text == "Monopoly"{up.setButtonNameCenter(player1.name.text)
        }else if up.background.titleLabel?.text == player1.name.text {up.setButtonNameCenter(player2.name.text)
        }else if up.background.titleLabel?.text == player2.name.text {up.setButtonNameCenter("Tablero")
        }else if up.background.titleLabel?.text == "Tablero" {up.setButtonNameCenter("Monopoly")}
        }
        
        if nDeJugadores.selectedSegmentIndex == 1
        {if up.background.titleLabel?.text == "Monopoly"{up.setButtonNameCenter(player1.name.text)
        }else if up.background.titleLabel?.text == player1.name.text {up.setButtonNameCenter(player2.name.text)
        }else if up.background.titleLabel?.text == player2.name.text {up.setButtonNameCenter(player3.name.text)
        }else if up.background.titleLabel?.text == player3.name.text {up.setButtonNameCenter("Tablero")
        }else if up.background.titleLabel?.text == "Tablero" {up.setButtonNameCenter("Monopoly")}
        }
        
        if nDeJugadores.selectedSegmentIndex == 2
        {if up.background.titleLabel?.text == "Monopoly"{up.setButtonNameCenter(player1.name.text)
        }else if up.background.titleLabel?.text == player1.name.text {up.setButtonNameCenter(player2.name.text)
        }else if up.background.titleLabel?.text == player2.name.text {up.setButtonNameCenter(player3.name.text)
        }else if up.background.titleLabel?.text == player3.name.text {up.setButtonNameCenter(player4.name.text)
        }else if up.background.titleLabel?.text == player4.name.text {up.setButtonNameCenter("Tablero")
        }else if up.background.titleLabel?.text == "Tablero" {up.setButtonNameCenter("Monopoly")}
        }
        
        
        if nDeJugadores.selectedSegmentIndex == 3
        {if up.background.titleLabel?.text == "Monopoly"{up.setButtonNameCenter(player1.name.text)
        }else if up.background.titleLabel?.text == player1.name.text {up.setButtonNameCenter(player2.name.text)
        }else if up.background.titleLabel?.text == player2.name.text {up.setButtonNameCenter(player3.name.text)
        }else if up.background.titleLabel?.text == player3.name.text {up.setButtonNameCenter(player4.name.text)
        }else if up.background.titleLabel?.text == player4.name.text {up.setButtonNameCenter(player5.name.text)
        }else if up.background.titleLabel?.text == player5.name.text {up.setButtonNameCenter("Tablero")
        }else if up.background.titleLabel?.text == "Tablero" {up.setButtonNameCenter("Monopoly")}
        }
        
        
        if nDeJugadores.selectedSegmentIndex == 4
        {if up.background.titleLabel?.text == "Monopoly"{up.setButtonNameCenter(player1.name.text)
        }else if up.background.titleLabel?.text == player1.name.text {up.setButtonNameCenter(player2.name.text)
        }else if up.background.titleLabel?.text == player2.name.text {up.setButtonNameCenter(player3.name.text)
        }else if up.background.titleLabel?.text == player3.name.text {up.setButtonNameCenter(player4.name.text)
        }else if up.background.titleLabel?.text == player4.name.text {up.setButtonNameCenter(player5.name.text)
        }else if up.background.titleLabel?.text == player5.name.text {up.setButtonNameCenter(player6.name.text)
        }else if up.background.titleLabel?.text == player6.name.text {up.setButtonNameCenter("Tablero")
        }else if up.background.titleLabel?.text == "Tablero" {up.setButtonNameCenter("Monopoly")}
        }
    }
    
    func less(sender: UIButton){
        if nDeJugadores.selectedSegmentIndex == 0
        {if less.background.titleLabel?.text == "Monopoly"{less.setButtonNameCenter(player1.name.text)
        }else if less.background.titleLabel?.text == player1.name.text {less.setButtonNameCenter(player2.name.text)
        }else if less.background.titleLabel?.text == player2.name.text {less.setButtonNameCenter("Tablero")
        }else if less.background.titleLabel?.text == "Tablero" {less.setButtonNameCenter("Monopoly")}
        }
        
        if nDeJugadores.selectedSegmentIndex == 1
        {if less.background.titleLabel?.text == "Monopoly"{less.setButtonNameCenter(player1.name.text)
        }else if less.background.titleLabel?.text == player1.name.text {less.setButtonNameCenter(player2.name.text)
        }else if less.background.titleLabel?.text == player2.name.text {less.setButtonNameCenter(player3.name.text)
        }else if less.background.titleLabel?.text == player3.name.text {less.setButtonNameCenter("Tablero")
        }else if less.background.titleLabel?.text == "Tablero" {less.setButtonNameCenter("Monopoly")}
        }
        
        if nDeJugadores.selectedSegmentIndex == 2
        {if less.background.titleLabel?.text == "Monopoly"{less.setButtonNameCenter(player1.name.text)
        }else if less.background.titleLabel?.text == player1.name.text {less.setButtonNameCenter(player2.name.text)
        }else if less.background.titleLabel?.text == player2.name.text {less.setButtonNameCenter(player3.name.text)
        }else if less.background.titleLabel?.text == player3.name.text {less.setButtonNameCenter(player4.name.text)
        }else if less.background.titleLabel?.text == player4.name.text {less.setButtonNameCenter("Tablero")
        }else if less.background.titleLabel?.text == "Tablero" {less.setButtonNameCenter("Monopoly")}
        }
        
        
        if nDeJugadores.selectedSegmentIndex == 3
        {if less.background.titleLabel?.text == "Monopoly"{less.setButtonNameCenter(player1.name.text)
        }else if less.background.titleLabel?.text == player1.name.text {less.setButtonNameCenter(player2.name.text)
        }else if less.background.titleLabel?.text == player2.name.text {less.setButtonNameCenter(player3.name.text)
        }else if less.background.titleLabel?.text == player3.name.text {less.setButtonNameCenter(player4.name.text)
        }else if less.background.titleLabel?.text == player4.name.text {less.setButtonNameCenter(player5.name.text)
        }else if less.background.titleLabel?.text == player5.name.text {less.setButtonNameCenter("Tablero")
        }else if less.background.titleLabel?.text == "Tablero" {less.setButtonNameCenter("Monopoly")}
        }
        
        
        if nDeJugadores.selectedSegmentIndex == 4
        {if less.background.titleLabel?.text == "Monopoly"{less.setButtonNameCenter(player1.name.text)
        }else if less.background.titleLabel?.text == player1.name.text {less.setButtonNameCenter(player2.name.text)
        }else if less.background.titleLabel?.text == player2.name.text {less.setButtonNameCenter(player3.name.text)
        }else if less.background.titleLabel?.text == player3.name.text {less.setButtonNameCenter(player4.name.text)
        }else if less.background.titleLabel?.text == player4.name.text {less.setButtonNameCenter(player5.name.text)
        }else if less.background.titleLabel?.text == player5.name.text {less.setButtonNameCenter(player6.name.text)
        }else if less.background.titleLabel?.text == player6.name.text {less.setButtonNameCenter("Tablero")
        }else if less.background.titleLabel?.text == "Tablero" {less.setButtonNameCenter("Monopoly")}
        }
    }
    
    func segmentedValueChanged(sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            name3.hidden = true
            name4.hidden = true
            name5.hidden = true
            name6.hidden = true
            
            j3j.hidden = true
            j4j.hidden = true
            j5j.hidden = true
            j6j.hidden = true
            
            player3.background.hidden = true
            player4.background.hidden = true
            player5.background.hidden = true
            player6.background.hidden = true
            
            playerTable.background.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.19894366
            
            viewPay.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.31514085
        }
        
        if sender.selectedSegmentIndex == 1 {
            name3.hidden = false
            name4.hidden = true
            name5.hidden = true
            name6.hidden = true
            
            j3j.hidden = false
            j4j.hidden = true
            j5j.hidden = true
            j6j.hidden = true
            
            player3.background.hidden = false
            player4.background.hidden = true
            player5.background.hidden = true
            player6.background.hidden = true
            
            playerTable.background.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.31514085
            
            viewPay.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.43133803
        }
        
        if sender.selectedSegmentIndex == 2 {
            name3.hidden = false
            name4.hidden = false
            name5.hidden = true
            name6.hidden = true
            
            j3j.hidden = false
            j4j.hidden = false
            j5j.hidden = true
            j6j.hidden = true
            
            player3.background.hidden = false
            player4.background.hidden = false
            player5.background.hidden = true
            player6.background.hidden = true
            
            playerTable.background.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.31514085
            
            viewPay.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.43133803
        }
        
        if sender.selectedSegmentIndex == 3 {
            name3.hidden = false
            name4.hidden = false
            name5.hidden = false
            name6.hidden = true
            
            j3j.hidden = false
            j4j.hidden = false
            j5j.hidden = false
            j6j.hidden = true
            
            player3.background.hidden = false
            player4.background.hidden = false
            player5.background.hidden = false
            player6.background.hidden = true
            
            playerTable.background.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.43133803
            viewPay.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.54753521
        }
        
        if sender.selectedSegmentIndex == 4 {
            name3.hidden = false
            name4.hidden = false
            name5.hidden = false
            name6.hidden = false
            
            j3j.hidden = false
            j4j.hidden = false
            j5j.hidden = false
            j6j.hidden = false
            
            player3.background.hidden = false
            player4.background.hidden = false
            player5.background.hidden = false
            player6.background.hidden = false
            
            playerTable.background.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.43133803
            viewPay.frame.origin.y = UIScreen.mainScreen().bounds.size.height * 0.54753521
        }
        println(sender.selectedSegmentIndex)
        
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}