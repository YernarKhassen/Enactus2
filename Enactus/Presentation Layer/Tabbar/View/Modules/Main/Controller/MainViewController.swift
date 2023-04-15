import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    //MARK: - View
    private lazy var mainImageView: MainImageView = {
        let view = MainImageView()
        return view
    }()
    
    private lazy var mainTableView: UITableView = {
        let view = UITableView()
        return view
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Methods
    private func setup() {
        setupViews()
        makeConstraints()
        configure()
        setupColors()
    }
    
    private func setupViews() {
        [mainImageView].forEach {
            view.addSubview($0)
        }
    }
    
    private func makeConstraints() {
        mainImageView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
        }
    }
    
    private func configure() {
        mainImageView.image = UIImage(named: "mainPageImage")
    }
    
    private func setupColors() {
        view.backgroundColor = .enWhite
    }
}
