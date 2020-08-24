//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

class ___FILEBASENAMEASIDENTIFIER___: BaseSceneCoordinator<TransferDataType> {
    
    override func start() -> Observable<TransferDataType> {
        let viewModel = ___VARIABLE_productName:identifier___ViewModel(dependency: dependency)
        let viewController = ___VARIABLE_productName:identifier___ViewController.instantiate(with: viewModel)
        let navigationController = window.rootViewController as? UINavigationController
        navigationController?.pushViewController(viewController, animated: false)
        viewModel.present.subscribe(onNext: { [unowned self] scene in
            self.presentCoordinator(scene.rawValue)
        }).disposed(by: disposeBag)
        return Observable.just(.empty)
    }
}
