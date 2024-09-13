import UIKit


class LoginSignupViewController: UIViewController {
    
    // 중앙 로고 이미지 뷰 생성
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Cafedi_image")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // 제목 라벨 (Cafedi)
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = UIColor(red: 0.75, green: 0.44, blue: 0.28, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(UIColor(red: 0.75, green: 0.44, blue: 0.28, alpha: 1.0), for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor(red: 0.75, green: 0.44, blue: 0.28, alpha: 1.0).cgColor
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
    // Back 버튼 숨기기
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
        
        view.addSubview(logoImageView)
    }
    
    // 제약 조건 설정
//    func setupConstraints() {
//        NSLayoutConstraint.activate([
//            logoImageView.topAnchor.constraint(equalTo: view.safe)
//        ])
//    }
}
