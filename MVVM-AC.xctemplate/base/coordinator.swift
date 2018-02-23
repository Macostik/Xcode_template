//  ___FILEHEADER___

import UIKit
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: BaseCoordinator<Void> {
    
    override func start() -> Observable<Void> {
        let viewController = ___VARIABLE_productName:identifier___ViewController.initFromStoryboard(name: "Main")
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let viewModel = ___VARIABLE_productName:identifier___ViewModel()
        viewController.viewModel = viewModel
         return Observable.never()
    }
}
