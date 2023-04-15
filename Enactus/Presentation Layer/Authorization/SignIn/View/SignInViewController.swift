//
//  SignInViewController.swift
//  Enactus
//
//  Created by Dinmukhamed on 27.03.2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    enum State {
        case loading
        case loaded
    }
    
    var delegate: SignInCoordinator?
    
    private var state: State {
        didSet {
            updateState()
        }
    }
    
    private func updateState() {
        switch state {
        case .loading:
            activityIndicator.startAnimating()
        case .loaded:
            activityIndicator.stopAnimating()
        }
    }
    
    init(delegate: SignInCoordinator? = nil, state: State) {
        self.delegate = delegate
        self.state = state
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy private var activityIndicator : SYActivityIndicatorView = {
        let image = UIImage(named: "loading.png")
        return SYActivityIndicatorView(image: nil)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(activityIndicator)
        activityIndicator.center = self.view.center
        state = .loaded
    }
}
