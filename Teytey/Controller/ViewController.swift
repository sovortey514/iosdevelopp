
import UIKit

class ViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Placeholder"
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.cornerRadius = 10
        return tf
    }()
    private lazy var lable: UILabel = {
        let lable = UILabel()
        lable.text = "Hello world"
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private lazy var btn1: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("1", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn2: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("2", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn3: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("3", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn4: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("4", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn5: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("5", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn6: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("6", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn7: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("7", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn8: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("8", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn9: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("9", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()
    
    private lazy var btn0: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("0", for: .normal)
        btn.backgroundColor = .lightGray
        return btn
    }()

override func loadView() {
        super.loadView()
        //prepare view here
        view.addSubview(textField)
        view.addSubview(lable)
        view.addSubview(btn1)
        view.addSubview(btn2)
        view.addSubview(btn3)
        view.addSubview(btn4)
        view.addSubview(btn5)
        view.addSubview(btn6)
        view.addSubview(btn7)
        view.addSubview(btn8)
        view.addSubview(btn9)
        view.addSubview(btn0)
        
        textField.bottomAnchor.constraint(equalTo: lable.bottomAnchor, constant: -40 ).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        lable.centerXAnchor.constraint(equalTo:
           view.centerXAnchor).isActive = true
        lable.centerYAnchor.constraint(equalTo:
            view.centerYAnchor).isActive = true
        
        btn2.topAnchor.constraint(equalTo: lable.bottomAnchor, constant: 20).isActive = true
        btn2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn2.heightAnchor.constraint(equalToConstant: 45).isActive = true
        //btn2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        btn1.trailingAnchor.constraint(equalTo: btn2.leadingAnchor, constant: -10).isActive = true
        btn1.centerYAnchor.constraint(equalTo: btn2.centerYAnchor).isActive = true
        //btn1.heightAnchor.constraint(equalToConstant: 45).isActive = true
        //btn1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        btn1.heightAnchor.constraint(equalTo: btn2.heightAnchor).isActive = true
        btn1.widthAnchor.constraint(equalTo: btn2.widthAnchor).isActive = true
        btn1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        btn3.leadingAnchor.constraint(equalTo: btn2.trailingAnchor, constant: 10).isActive = true
        //btn3.centerYAnchor.constraint(equalTo: btn2.centerYAnchor).isActive = true
        btn3.topAnchor.constraint(equalTo: btn2.topAnchor).isActive = true
        btn3.heightAnchor.constraint(equalTo: btn2.heightAnchor).isActive = true
        btn3.widthAnchor.constraint(equalTo: btn2.widthAnchor).isActive = true
        btn3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        btn4.topAnchor.constraint(equalTo: btn5.topAnchor).isActive = true
        btn4.centerYAnchor.constraint(equalTo: btn5.centerYAnchor).isActive = true
        btn4.heightAnchor.constraint(equalTo: btn5.heightAnchor).isActive = true
        btn4.widthAnchor.constraint(equalTo: btn5.widthAnchor).isActive = true
        btn4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        btn5.topAnchor.constraint(equalTo: btn2.bottomAnchor, constant: 10).isActive = true
        btn5.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn5.heightAnchor.constraint(equalToConstant: 45).isActive = true
        //btn5.widthAnchor.constraint(equalToConstant: 50).isActive = true

        
        btn6.leadingAnchor.constraint(equalTo: btn5.trailingAnchor, constant: 10).isActive = true
        btn6.topAnchor.constraint(equalTo: btn5.topAnchor).isActive = true
        btn6.heightAnchor.constraint(equalTo: btn5.heightAnchor).isActive = true
        btn6.widthAnchor.constraint(equalTo: btn5.widthAnchor).isActive = true
        btn6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true

        btn7.topAnchor.constraint(equalTo: btn8.topAnchor).isActive = true
        btn7.centerYAnchor.constraint(equalTo: btn8.centerYAnchor).isActive = true
        btn7.heightAnchor.constraint(equalTo: btn8.heightAnchor).isActive = true
        btn7.widthAnchor.constraint(equalTo: btn8.widthAnchor).isActive = true
        btn7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        btn8.topAnchor.constraint(equalTo: btn5.bottomAnchor, constant: 10).isActive = true
        btn8.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn8.heightAnchor.constraint(equalToConstant: 45).isActive = true
        btn9.leadingAnchor.constraint(equalTo: btn8.trailingAnchor, constant: 10).isActive = true
        btn9.topAnchor.constraint(equalTo: btn8.topAnchor).isActive = true
        btn9.heightAnchor.constraint(equalTo: btn8.heightAnchor).isActive = true
        btn9.widthAnchor.constraint(equalTo: btn8.widthAnchor).isActive = true
        btn9.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
                
        btn0.topAnchor.constraint(equalTo: btn8.bottomAnchor, constant: 10).isActive = true
        btn0.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn0.heightAnchor.constraint(equalToConstant: 45).isActive = true
        btn0.widthAnchor.constraint(equalTo: btn8.widthAnchor).isActive = true
                    
                    /*lable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                               constant: 50).isActive = true
                    lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                    lable.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
                    lable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
                    lable.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true */
                }
                
            override func viewDidLoad() {
                super.viewDidLoad()
                view.backgroundColor = .white
                // Do any additional setup after loading the view, typically from a nib.
                
            }
            
            override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                
            }
            
            override func viewDidAppear(_ animated: Bool) {
                super.viewDidAppear(animated)
                
            }
            
        }

        

                    
