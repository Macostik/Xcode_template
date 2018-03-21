//  ___FILEHEADER___

import UIKit
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: BaseCoordinator<Void> {
    
    private let rootViewController: UIViewController
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    override func start() -> Observable<Void> {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel()
        let viewController = ___VARIABLE_productName:identifier___ViewController.instantiate(with: viewModel)
        let navigationController = UINavigationController(rootViewController: viewController)
        
        return Observable.never()
    }
}
