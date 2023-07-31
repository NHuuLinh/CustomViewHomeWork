import UIKit

class PersonDataViewController: UIViewController {
    @IBOutlet weak var nameView: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateView: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var YourJob: UITextField!
    @IBOutlet weak var jobName: UITextField!
    
    @IBOutlet weak var inCome: UITextField!
    @IBOutlet weak var inComeLevel: UIButton!
    @IBOutlet weak var genderText: UITextField!
    @IBOutlet weak var maleCheck: UIImageView!
    @IBOutlet weak var femaleCheck: UIImageView!
    @IBOutlet weak var maleLabel: UILabel!
    @IBOutlet weak var femaleLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    
    var passData: ((String, String, Data?) -> Void)?

    let sDX: CGFloat = 20.0
    let sDY: CGFloat = 30
    let sDWidth: CGFloat = 400
    let sDHeightField: CGFloat = 60
    let sDTexttHeight: CGFloat = 20
    let onImage = UIImage(named: "on")
    let offImage = UIImage(named: "off")
    var isChecked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameView.frame = CGRect(x: sDX,
                                y: 200,
                                width: sDWidth-sDX,
                                height: sDTexttHeight)
        nameView.text = "Your Name"
        nameView.font = UIFont.systemFont(ofSize: 20)
        nameView.borderStyle = .none
        nameView.textColor = .gray
        nameField.frame = CGRect(x: sDX,
                                 y: nameView.frame.minY + sDY,
                                 width: sDWidth-sDX,
                                 height: sDHeightField)
        nameField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        nameField.text = ""
        nameField.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        nameField.font = UIFont.systemFont(ofSize: 20)
        //
        dateView.frame = CGRect(x: sDX,
                                y: nameField.frame.maxY + sDY,
                                width: sDWidth-sDX,
                                height: sDTexttHeight)
        dateView.text = "Date Of Birth"
        //        dateView.accessibilityLanguage = ui
        dateView.font = UIFont.systemFont(ofSize: 20)
        dateView.borderStyle = .none
        dateView.textColor = .gray
        datePicker.frame = CGRect(x: sDX,
                                  y: dateView.frame.minY + sDY,
                                  width: sDWidth-sDX,
                                  height: sDHeightField)
        datePicker.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        datePicker.setValue(UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00), forKey: "textColor")
        datePicker.contentHorizontalAlignment = .left
        datePicker.datePickerMode = .date
        //
        YourJob.frame = CGRect(x: sDX,
                               y: datePicker.frame.maxY + sDY,
                               width: sDWidth-sDX,
                               height: sDTexttHeight)
        YourJob.text = "Your Job"
        YourJob.font = UIFont.systemFont(ofSize: 20)
        YourJob.borderStyle = .none
        YourJob.textColor = .gray
        jobName.frame = CGRect(x: sDX,
                               y: YourJob.frame.maxY + sDY,
                               width: sDWidth-sDX,
                               height: sDHeightField)
        jobName.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        jobName.text = ""
        jobName.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        jobName.font = UIFont.systemFont(ofSize: 20)
        //Income
        inCome.frame = CGRect(x: sDX,
                              y: jobName.frame.maxY + sDY,
                              width: sDWidth-sDX,
                              height: sDTexttHeight)
        inCome.text = "Monthly Income"
        inCome.font = UIFont.systemFont(ofSize: 20)
        inCome.borderStyle = .none
        inCome.textColor = .gray
        inComeLevel.frame = CGRect(x: sDX,
                                   y: inCome.frame.maxY + sDY,
                                   width: sDWidth-sDX,
                                   height: sDHeightField)
        jobName.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        inComeLevel.setTitle("$0", for: .normal)
        inComeLevel.setTitleColor(UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00), for: .normal)
        inComeLevel.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        inComeLevel.contentHorizontalAlignment = .left
        inComeLevel.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        //
        genderText.frame = CGRect(x: sDX,
                                  y: inComeLevel.frame.maxY + sDY,
                                  width: sDWidth-sDX,
                                  height: sDTexttHeight)
        genderText.text = "Gender"
        genderText.font = UIFont.systemFont(ofSize: 20)
        genderText.borderStyle = .none
        genderText.textColor = .gray
        maleLabel.frame = CGRect(x: sDX,
                               y: genderText.frame.maxY + sDY,
                               width: (sDWidth/2) - 10,
                               height: sDHeightField)
        maleLabel.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        maleLabel.text = "Male"
        maleLabel.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        maleLabel.font = UIFont.systemFont(ofSize: 20)
        maleLabel.textAlignment = .center
        maleLabel.layer.cornerRadius = 20
        maleLabel.layer.masksToBounds = true
        femaleLabel.frame = CGRect(x: maleLabel.frame.maxX + 5 ,
                               y: genderText.frame.maxY + sDY,
                               width: (sDWidth/2) - 10,
                               height: sDHeightField)
        femaleLabel.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        femaleLabel.text = "Female"
        femaleLabel.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        femaleLabel.font = UIFont.systemFont(ofSize: 20)
        femaleLabel.textAlignment = .center
        femaleLabel.layer.cornerRadius = 20
        femaleLabel.layer.masksToBounds = true
//        femaleLabel.frame.origin.x = 400
        
        
        maleCheck.image = UIImage(named: "off")
        maleCheck.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        maleCheck.center.y = maleLabel.center.y
        maleCheck.frame.origin.x = maleLabel.frame.origin.x + 20
        femaleCheck.image = UIImage(named: "off")
        femaleCheck.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        femaleCheck.center.y = femaleLabel.center.y
        femaleCheck.frame.origin.x = femaleLabel.frame.origin.x + 20
        //
        avatarImage.frame = CGRect(x: 100, y: 50, width: 150, height: 150)
        avatarImage.center.x = view.center.x
//        avatarImage.image = UIImage(named: "avatar")
        
        //
        let maleTapGesture = UITapGestureRecognizer(target: self, action: #selector(maleButtonTapped))
        maleCheck.addGestureRecognizer(maleTapGesture)
        maleCheck.isUserInteractionEnabled = true
        
        let femaleTapGesture = UITapGestureRecognizer(target: self, action: #selector(femaleButtonTapped))
        femaleCheck.addGestureRecognizer(femaleTapGesture)
        femaleCheck.isUserInteractionEnabled = true
        //
        
        
    }
    @objc func maleButtonTapped() {
                maleCheck.image = UIImage(named: "on")
                femaleCheck.image = UIImage(named: "off")
            }
    @objc func femaleButtonTapped() {
                femaleCheck.image = UIImage(named: "on")
                maleCheck.image = UIImage(named: "off")
            }
    @objc func buttonTapped() {
    }
    @IBAction func BackButton(_ sender: Any) {
//        nameInput.text = nameField.text
//        jobInput.text = jobName.text
//        avatarImageView.image = avatarImage.image
//        passData?("Back", 0)
        let imageData = avatarImage.image?.pngData()
        passData?("\(nameField.text ?? "")",
                  "\(jobName.text ?? ""), ",
                  imageData)
        dismiss(animated: true)
    }
    @IBAction func inComeSelector(_ sender: Any) {
        let alertController = UIAlertController(title: "Select an option", message: nil, preferredStyle: .actionSheet)
        
        let arrays = ["$0 - $500 /year", "$500 - $3000 /year", "$3000 - $10000 /year", "$10000 - $15000 /year", "over $15000"]
        
        for value in arrays {
            let action = UIAlertAction(title: value, style: .default) { [weak self] _ in
                self?.inComeLevel.setTitle(value, for: .normal)
            }
            alertController.addAction(action)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
