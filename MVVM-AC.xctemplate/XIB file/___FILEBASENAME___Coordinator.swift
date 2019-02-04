//  ___FILEHEADER___

import UIKit
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: BaseCoordinator<Void> {
    
    private let window: UIWindow
    private let dependencies: Dependency
    
    init(window: UIWindow, dependencies: Dependency) {
        self.window = window
        self.dependencies = dependencies
    }
    
    override func start() -> Observable<Void> {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(dependencies: dependencies)
        let viewController = ___VARIABLE_productName:identifier___ViewController.instantiate(with: viewModel)
        let navigationController = window.rootViewController as? UINavigationController
        navigationController?.pushViewController(viewController, animated: false)
        return Observable.just(())
    }
}
