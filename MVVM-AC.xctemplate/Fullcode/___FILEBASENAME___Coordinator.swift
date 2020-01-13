//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

class ___FILEBASENAMEASIDENTIFIER___: BaseSceneCoordinator<Void> {
    
    override func start() -> Observable<Void> {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(dependencies: dependencies)
        let viewController = ___VARIABLE_productName:identifier___ViewController.instantiate(with: viewModel)
        let navigationController = window.rootViewController as? UINavigationController
        navigationController?.pushViewController(viewController, animated: false)
        return Observable.just(())
    }
    
//    @discardableResult private func present<#Class#>Scene() -> Observable<Void> {
//        let <#Class#>Coordinator = <#Class#>SceneCoordinator(window: window, dependencies: dependencies)
//        return coordinate(to: <#Class#>Coordinator)
//    }
}
